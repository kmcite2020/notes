import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'features/core/navigator.dart';
import 'features/home.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/core/hive_storage.dart';
import 'features/core/themes.dart';
import 'features/notes/notes.dart';

Directory get directory => directoryRM.state;
final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);

Isar get isar => isarRM.state;
final isarRM = RM.injectFuture(
  () => Future.delayed(
    1.seconds,
    () => Isar.openAsync(
      schemas: [
        NoteSchema,
      ],
      directory: directory.path,
    ),
  ),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await directoryRM.initializeState();
  Hive.defaultDirectory = directory.path;
  await RM.storageInitializer(HiveStorage());
  runApp(
    const MyApp(),
  );
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return directoryRM.builder(
      builder: (_) {
        return isarRM.builder(
          builder: (_) => MaterialApp(
            navigatorKey: navigator.navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: themes.theme(),
            darkTheme: themes.darkTheme(),
            themeMode: themes.themeMode(),
            home: HomePage(),
          ),
        );
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
