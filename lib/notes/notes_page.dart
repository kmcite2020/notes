import 'package:notes/main.dart';
import 'package:notes/settings/settings_page.dart';

import 'add_note_page.dart';
import 'note_tile.dart';
import 'notes_bloc.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'NOTES'.text(),
        actions: [
          IconButton(
            onPressed: () {
              to(SettingsPage());
            },
            icon: Icon(Icons.menu),
          ).pad(),
        ],
      ),
      body: NotesListUI(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => to(AddNotePage()),
        isExtended: true,
        child: Icon(Icons.add),
      ),
    );
  }
}

class NotesListUI extends UI {
  NotesListUI({super.key});
  @override
  Widget build(BuildContext context) {
    return notesRM.loading
        ? CircularProgressIndicator().center()
        : ListView.builder(
            itemCount: notesRM().length,
            itemBuilder: (context, index) {
              return NoteTile(
                note: ([Note? _]) {
                  if (_ != null) notesRM(_);
                  return notesRM().elementAt(index);
                },
              );
            },
          );
  }
}
