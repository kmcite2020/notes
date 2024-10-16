import 'package:notes/objectbox.g.dart';
import 'package:notes/settings/settings.dart';
import 'package:path_provider/path_provider.dart';

import 'main.dart';
import 'settings/settings_bloc.dart';
export 'dart:convert';
export 'package:objectbox/objectbox.dart';

export 'package:manager/manager.dart';

export 'package:flutter/foundation.dart';

export 'dart:async';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:notes/notes/notes.dart';
export 'package:notes/notes/notes_page.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await storeRM.initializeState();
  RM.navigate.transitionsBuilder = RM.transitions.leftToRight(
    duration: Duration(milliseconds: 500),
  );
  runApp(NotesApp());
}

final storeRM = RM.injectFuture(
  () async => await openStore(
    directory: (await getApplicationDocumentsDirectory()).path + '___',
  ),
);

Store get store => storeRM.state;

class NotesApp extends UI {
  build(_) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigator.navigatorKey,
      home: NotesPage(),
      themeMode: themeMode() == themeModes.first ? ThemeMode.light : ThemeMode.dark,
      theme: FlexThemeData.light(
        useMaterial3: true,
        lightIsWhite: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: 0,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        darkIsTrueBlack: true,
        subThemesData: FlexSubThemesData(
          defaultRadius: 0,
        ),
      ),
    );
  }
}

final navigator = RM.navigate;
final to = navigator.to;
