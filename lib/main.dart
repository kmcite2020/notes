import 'package:notes/main.dart';

export 'dart:convert';
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:notes/features/core/hive_storage.dart';
export 'package:notes/features/core/injections.dart';
export 'package:notes/features/core/navigator.dart';
export 'package:notes/features/core/themes.dart';
export 'package:notes/features/home.dart';
export 'package:notes/features/notes/notes.dart';
export 'package:notes/features/settings/settings.dart';
export 'package:path_provider/path_provider.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:notes/features/core/extensions.dart';
export 'package:notes/features/notes/notes_manager.dart';
export 'package:notes/features/notes/components/note_item.dart';
export 'package:notes/features/archives.dart';
export 'package:notes/features/drawer.dart';
export 'package:notes/features/feedback.dart';

export 'package:notes/features/notes/pages/notes_page.dart';
export 'package:notes/features/reminders.dart';
export 'package:notes/features/settings/settings_page.dart';
export 'package:notes/features/trash.dart';

typedef UI = ReactiveStatelessWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  runApp(
    const App(),
  );
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: themes.theme(),
      darkTheme: themes.darkTheme(),
      themeMode: themes.themeMode(),
      home: NotesPage(),
    );
  }
}
