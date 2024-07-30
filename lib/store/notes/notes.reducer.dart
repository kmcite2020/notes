import '../../main.dart';

final notesRM = RM(
  Notes(),
  key: 'notes',
  fromJson: Notes.fromJson,
);
Notes get notesState => notesRM();

void addNote(Note note) {
  notesRM(
    notesState.copyWith(
      cache: Map.of(notesState.cache)..[note.id] = note,
    ),
  );
}

void removeNote(String id) {
  notesRM(
    notesState.copyWith(
      cache: Map.of(notesState.cache)..remove(id),
    ),
  );
}

void removeAllNotes() {
  notesRM(
    notesState.copyWith(
      cache: {},
    ),
  );
}
