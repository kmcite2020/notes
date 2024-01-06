import '../../../main.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
            onPressed: () => navigator.to(SettingsPage()),
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              notesManager.addNote(
                (newNote) => newNote,
              );
            },
            icon: const Icon(Icons.note_add),
          ).pad(
            padding: const EdgeInsets.only(right: 8),
          ),
        ],
        title: SearchBar(
          onChanged: notesManager.setQuery,
          hintText: 'Search by Note\'s title.',
        ),
      ),
      body: switch (settingsManager.settings.notesViewMode) {
        NotesViewMode.grid => GridView.builder(
            itemCount: notesManager.query.isEmpty
                ? notesManager.notes.length
                : notesManager.queriedNotes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final note = notesManager.query.isEmpty
                  ? notesManager.notes[index]
                  : notesManager.queriedNotes[index];
              return NoteItem(
                note: note,
                onNoteDeleted: notesManager.deleteNote,
              );
            },
          ),
        NotesViewMode.list => ListView.builder(
            itemCount: notesManager.query.isEmpty
                ? notesManager.notes.length
                : notesManager.queriedNotes.length,
            itemBuilder: (context, index) {
              final note = notesManager.query.isEmpty
                  ? notesManager.notes[index]
                  : notesManager.queriedNotes[index];
              return NoteItem(
                note: note,
                onNoteDeleted: notesManager.deleteNote,
              );
            },
          ),
      },
    );
  }
}
