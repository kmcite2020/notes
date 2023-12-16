import 'package:flutter/material.dart';
import 'archives.dart';
import 'drawer.dart';
import 'feedback.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'notes/notes_page.dart';
import 'reminders.dart';
import 'settings/settings_page.dart';
import 'trash.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBuilder(),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          NotesPage(),
          RemindersPage(),
          ArchivesPage(),
          TrashPage(),
          SettingsPage(),
          FeedbackPage(),
        ],
      ),
    );
  }
}
