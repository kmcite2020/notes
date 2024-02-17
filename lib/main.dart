export 'package:appwrite/appwrite.dart';
import 'package:notes/main.dart';
export 'package:manager/state_manager/ui/ui.dart';
export 'package:flutter/material.dart' hide Locale;
export 'package:manager/manager.dart';
export 'package:manager/state_manager/management/manager.dart';

export 'dart:convert';
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:notes/features/core/injections.dart';
export 'package:notes/features/core/navigator.dart';
export 'package:notes/features/home.dart';
export 'package:notes/features/notes/notes.dart';
export 'package:notes/features/settings/settings.dart';
export 'package:path_provider/path_provider.dart';
export 'package:notes/features/core/extensions.dart';
export 'package:notes/features/notes/components/note_item.dart';
export 'package:notes/features/archives.dart';
export 'package:notes/features/drawer.dart';
export 'package:notes/features/feedback.dart';

export 'package:notes/features/notes/pages/notes_page.dart';
export 'package:notes/features/reminders.dart';
export 'package:notes/features/settings/settings_page.dart';
export 'package:notes/features/removed_notes_page.dart';
// part 'main.freezed.dart';
// part 'main.g.dart';

final client = Client()
  ..setEndpoint('https://cloud.appwrite.io/v1')
  ..setProject('65bf124656e96417fead');

final databases = Databases(client);

void main() => RM.runApp(App());

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigator.navigatorKey,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: 'NOTES'.text(),
          actions: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
            ).pad()
          ],
        ),
        body: 'Hello'.text().center(),
      ),
    );
  }
}
