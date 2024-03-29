export 'package:appwrite/appwrite.dart';
import 'package:notes/main.dart';
export 'package:flutter/material.dart' hide Locale, State;
import 'package:flex_color_scheme/flex_color_scheme.dart';
export 'dart:convert';
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:notes/features/notes/notes.dart';
export 'package:notes/features/settings/settings.dart';
export 'package:path_provider/path_provider.dart';
export 'package:notes/features/notes/components/note_item.dart';
export 'package:notes/features/archives.dart';
export 'package:notes/features/drawer.dart';
export 'package:notes/features/feedback.dart';
export 'package:manager/manager.dart';
export 'package:notes/features/notes/pages/notes_page.dart';
export 'package:notes/features/reminders.dart';
export 'package:notes/features/settings/settings_page.dart';
export 'package:notes/features/removed_notes_page.dart';

import 'package:states_rebuilder/states_rebuilder.dart' as rebuilder;

final client = Client()
  ..setEndpoint('https://cloud.appwrite.io/v1')
  ..setProject('65bf124656e96417fead');

final databases = Databases(client);

void main() => RM.build(App());

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: rebuilder.RM.navigate.navigatorKey,
      theme: FlexThemeData.light(
        useMaterial3: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM.borderRadius(),
        ),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsRM.borderRadius(),
        ),
      ),
      themeMode: settingsRM.themeMode(),
      home: NotesPage(),
    );
  }
}
