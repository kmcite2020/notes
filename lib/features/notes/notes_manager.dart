import '../../main.dart';

final notesManager = NotesManager();

class NotesManager {
  final notesRM = RM.inject(
    () => Notes(),
    persist: () => PersistState(
      key: 'notes',
      toJson: (s) => jsonEncode(s.toJson()),
      fromJson: (json) => Notes.fromJson(jsonDecode(json)),
    ),
  );

  String get query => getNotes.query;

  Notes get getNotes => notesRM.state;
  void setNotes(Notes Function(Notes notes) notesModifier) =>
      notesRM.state = notesModifier(getNotes);

  List<Note> get allNotes => getNotes.cache.values.toList();
  List<Note> get notes => getNotes.cache.values
      .where(
        (element) => !element.isDeleted,
      )
      .toList();
  List<Note> get queriedNotes => getNotes.cache.values
      .where(
        (
          eachNote,
        ) =>
            eachNote.title.toLowerCase().contains(
                  getNotes.query.toLowerCase(),
                ),
      )
      .where(
        (eachNote) => !eachNote.isDeleted,
      )
      .toList();

  void addNote(Note Function(Note newNote) noteModifier) {
    final note = noteModifier(Note());
    setNotes(
      (notes) => notes.copyWith(
        cache: Map.of(notes.cache)..[note.noteID] = note,
      ),
    );
  }

  void deleteNote(Note note) {
    addNote(
      (_) => note.copyWith(isDeleted: true),
    );
  }

  void removeNote(Note note) => setNotes(
        (notes) => notes.copyWith(
          cache: Map.of(notes.cache)..remove(note.noteID),
        ),
      );

  void setQuery(String query) => setNotes(
        (notes) => notes.copyWith(query: query),
      );

  Note id(String id) => getNotes.cache[id] ?? Note().copyWith(noteID: '');
}
