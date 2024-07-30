import 'main.dart';

export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:notes/core.dart';
export 'package:notes/store/notes/note_page.dart';
export 'package:notes/store/notes/notes.dart';
export 'package:notes/settings/settings.dart';
export 'package:notes/store/navigation/navigation.reducer.dart';
export 'package:notes/store/notes/notes.page.dart';
export 'package:notes/store/settings/settings.reducer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.init();
  runApp(NotesApp());
}

class NotesApp extends UI {
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navigationRM(),
      themeMode: settingsState.themeMode,
      theme: FlexThemeData.light(
        useMaterial3: true,
        lightIsWhite: true,
        subThemesData: FlexSubThemesData(),
        // defaultRadius: store.state.settingsState.borderRadius,
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        darkIsTrueBlack: true,
        subThemesData: FlexSubThemesData(),
        // defaultRadius: store.state.settingsState.borderRadius,
      ),
    );
  }
}
