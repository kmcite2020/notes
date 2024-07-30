import 'package:notes/extenions.dart';
import 'package:notes/main.dart';
import 'package:notes/store/notes/notes.reducer.dart';

import '../navigation/navigation.action.dart';

class AddNotePage extends UI {
  static final noteTitleRM = ''.obs;
  static final noteDetailsRM = ''.obs;
  static final noteStatusRM = NoteStatus.Incomplete.obs;
  static final noteDateTimeRM = DateTime.now().obs;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Add Note'.text(),
        actions: [
          IconButton(
            onPressed: () => Navigation(NotesPage()),
            icon: Icon(
              Icons.notes_rounded,
            ),
          ).pad(),
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: noteTitleRM(),
            onChanged: noteTitleRM,
          ).pad(),
          TextFormField(
            initialValue: noteDetailsRM(),
            onChanged: noteDetailsRM,
          ).pad(),
          DropdownButtonFormField(
            value: noteStatusRM(),
            items: NoteStatus.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.text(),
                  ),
                )
                .toList(),
            onChanged: noteStatusRM,
          ).pad(),
          ElevatedButton(
            onPressed: () async {
              final dueDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1950),
                lastDate: DateTime.now().add(Duration(days: 365)),
              );
              if (dueDate == null) return;
              noteDateTimeRM(dueDate);
            },
            child: 'Date Selector'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: noteTitleRM().isEmpty
                ? null
                : () {
                    final note = Note().copyWith(
                      title: noteTitleRM(),
                      timeCreated: noteDateTimeRM(),
                      noteStatus: noteStatusRM(),
                      details: noteDetailsRM(),
                      id: randomID,
                    );
                    addNote(note);
                  },
            child: 'Save Note'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
