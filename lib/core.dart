import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'main.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// class to add dynamic updates into a RxBuilder widget
@sealed
class ReactiveWidgetBuilder<T> {
  // observable to listen the events from other observable localled in a RxBuilder Widget
  RM<T?> subject = RM(null);

  /// used to create a tmp RxNotifier since a RxBuilder Widget
  static ReactiveWidgetBuilder? proxy;

  /// store the subscriptions for one observable
  final Map<RM, List<StreamSubscription>> _subscriptions = {};
  Map<RM, List<StreamSubscription>> get subscriptions => _subscriptions;

  // used by the RxBuilder to check if the builder method contains an observable
  bool get canUpdate => subscriptions.isNotEmpty;

  void setup(RM<T> rx) {
    // if the current observable is not in the subscriptions
    if (!_subscriptions.containsKey(rx)) {
      // create a Subscription for this observable
      final StreamSubscription subs = rx.stream.listen(subject.controller.add);

      /// get the subscriptions for this Rx and add the new subscription
      final listSubscriptions = _subscriptions[rx] ?? [];
      listSubscriptions.add(subs);
      _subscriptions[rx] = listSubscriptions;
    }
  }

  /// used by the RxBuilder to listen the changes in a observable
  StreamSubscription<T?> listen(void Function(T?) _) {
    return subject.stream.listen(_);
  }

  /// Closes the subscriptions for this Rx, releasing the resources.
  FutureOr<void> close() async {
    for (final e in _subscriptions.values) {
      for (final subs in e) {
        await subs.cancel();
      }
    }
    _subscriptions.clear();
    return subject.close();
  }
}

/// Rx class to work with observables
class RM<T> {
  /// Constructor
  ///
  /// creates a new observable with an initial value
  RM(
    this._value, {
    this.key,
    this.fromJson,
  }) {
    if (key != null) read();
  }

  /// store the value for this observable
  T _value;

  /// StreamController to emit the changes in the current observable
  StreamController<T>? _controller;

  StreamController<T> get controller {
    _controller ??= StreamController.broadcast();
    return _controller!;
  }

  /// stream for the current observable
  Stream<T> get stream => controller.stream;

  /// returns true if the current observable has listeners
  bool get hasListeners => controller.hasListener;

  set value(T newValue) {
    if (_value != newValue) {
      _value = newValue;
      controller.sink.add(_value);
    }
    if (key != null) write();
  }

  T Function(Map<String, dynamic> json)? fromJson;
  final String? key;
  static late Box _storage;
  static Future<void> init() async {
    await Hive.initFlutter();
    final app = await PackageInfo.fromPlatform();
    _storage = await Hive.openBox('${app.appName}_${app.version}');
  }

  _toJson<T>(T value) => (value as dynamic).toJson();
  void read() {
    final nullableJson = _storage.get(key);
    if (nullableJson != null) {
      final nullableState = fromJson?.call(nullableJson);
      if (nullableState != null) {
        value = nullableState;
      }
    }
  }

  void write() {
    _storage.put(key, _toJson(value));
  }

  /// returns the current value for this observable
  T get value {
    // if we have a RxBuilder accessing to the current value
    // we add a listener for that Widget
    if (ReactiveWidgetBuilder.proxy != null) {
      ReactiveWidgetBuilder.proxy!.setup(this);
    }
    return _value;
  }

  T get state => value;
  set state(T _state) => value = _state;
  T get get => value;
  void set([T? _set]) => call(_set);

  T call([T? _state]) {
    if (_state != null) {
      value = _state;
    }
    return value;
  }

  FutureOr<void> close() => _controller?.close();
}

extension RMExtensions<T> on RM<T> {
  /// [callback] is called every time that the [Rx<T>] changes.
  ///
  /// If [condition] is not null the [callback] only is called if [condition] returns true.
  RMReaction ever(void Function(T) callback, {bool Function(T)? condition}) {
    // ignore: cancel_subscriptions
    final StreamSubscription subscription = stream.listen((event) {
      if (condition != null) {
        if (condition(event)) {
          callback(event);
        }
      } else {
        callback(event);
      }
    });
    return RMReaction(subscription, null);
  }

  /// the [callback] will be executed only 1 time
  ///
  /// If [condition] is not null the [callback] only is called if [condition] returns true.
  RMReaction once(void Function(T) callback, {bool Function(T)? condition}) {
    late RMReaction reaction;
    // ignore: cancel_subscriptions
    StreamSubscription subscription = stream.listen((event) {
      if (condition != null) {
        if (condition(event)) {
          callback(event);
          reaction.dispose();
        }
      } else {
        callback(event);
        reaction.dispose();
      }
    });
    return reaction = RMReaction(subscription, null);
  }

  /// the [callback] will be called every certain time interval ignoring the other changes
  RMReaction interval(Duration duration, void Function(T) callback) {
    var debouncer = Debouncer(duration);
    // ignore: cancel_subscriptions
    final StreamSubscription subscription = stream.listen((event) {
      if (!debouncer.isRunning) {
        debouncer.call(() {
          callback(event);
          debouncer = Debouncer(duration);
        });
      }
    });
    return RMReaction(subscription, debouncer);
  }

  /// Every time that the [Rx<T>] changes the [callback] will be called after a delay.
  RMReaction debounce(Duration delay, void Function(T) callback) {
    final debouncer = Debouncer(delay);
    // ignore: cancel_subscriptions
    final StreamSubscription subscription = stream.listen((event) {
      debouncer.call(() {
        callback(event);
      });
    });
    return RMReaction(subscription, debouncer);
  }
}

/// this class allow us to cancel schedules tasks and subscriptions
class RMReaction {
  RMReaction(this._subscription, this._debouncer);

  final StreamSubscription _subscription;
  final Debouncer? _debouncer;
  bool _disposed = false;

  Future<void> dispose() async {
    if (_disposed) return;
    // cancel a schedule task
    _debouncer?.cancel();
    // cancel the events susbcription
    await _subscription.cancel();
    _disposed = true;
  }
}

/// this class is an implementenacion of a debounce functionallity
class Debouncer {
  Debouncer(this.delay);

  /// delay for a schedule task
  final Duration delay;

  // timer for a schedule task
  Timer? _timer;

  void call(void Function() action) {
    _timer?.cancel(); // cancel the current task
    _timer = Timer(delay, action);
  }

  /// Notifies if the delayed call is active.
  bool get isRunning => _timer?.isActive ?? false;

  /// Cancel the current delayed call.
  void cancel() => _timer?.cancel();
}

extension RxExtension<T> on T {
  RM<T> get obs => RM<T>(this);
}

abstract class UI extends StatefulWidget {
  // ignore: public_member_api_docs
  const UI({Key? key}) : super(key: key);

  /// the builder function
  Widget build(BuildContext context);

  @override
  // ignore: library_private_types_in_public_api
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  _UIState() {
    _observer = ReactiveWidgetBuilder();
  }

  ReactiveWidgetBuilder? _observer;
  late StreamSubscription _subscription;
  bool _afterFirstLayout = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      _afterFirstLayout = true;
    });
    // listen the observable events
    _subscription = _observer!.listen(_rebuild);
  }

  @override
  void dispose() {
    _afterFirstLayout = false;
    // remove the subsciptions when the widget is destroyed
    _subscription.cancel();
    if (_observer?.canUpdate ?? false) {
      _observer?.close();
    }

    super.dispose();
  }

  void _rebuild(_) {
    if (_afterFirstLayout && mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final observer = ReactiveWidgetBuilder.proxy;

    ReactiveWidgetBuilder.proxy = _observer;
    final result = widget.build(context);
    // if (!_observer!.canUpdate) {
    //   throw FlutterError(
    //     '''
    //   ''',
    //   );
    // }
    ReactiveWidgetBuilder.proxy = observer;
    return result;
  }
}
