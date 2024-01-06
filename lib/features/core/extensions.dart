import '../../main.dart';

extension WidgetExtensions on Widget {
  Widget center() => Center(child: this);
  Widget pad({EdgeInsets? padding}) => Padding(
        padding: padding ?? const EdgeInsets.all(8.0),
        child: this,
      );
}

extension InjectedBuilderExtension<T> on Injected<T> {
  Widget builder({
    required Widget Function(T data) builder,
    Widget? loaderUI,
    Widget Function(dynamic error)? errorUI,
  }) {
    return this.onAll(
      onWaiting: () {
        print('loading');
        return loaderUI ??
            CircularProgressIndicator(color: Colors.blue).center();
      },
      onError: (error, _) {
        print('error: $error');
        return errorUI?.call(error) ?? Text('Error: $error').center();
      },
      onData: (data) {
        print('data: $data');
        return builder(data);
      },
    );
  }
}

extension ObjectExtensions on Object? {
  Widget text({double scale = 1}) {
    return Text(
      toString(),
      textScaler: TextScaler.linear(scale),
    );
  }
}
