import '../../main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Note with _$Note {
  const factory Note.raw({
    @Default('') final String id,
    @Default('') final String title,
    @Default('') final String description,
    required final DateTime created,
    @Default(false) final bool isArchived,
    @Default(false) final bool isRemoved,
    @Default(true) final bool editing,
  }) = _Note;
  const Note._();

  factory Note() => Note.raw(id: randomID, created: DateTime.now());
  factory Note.fromJson(json) => _$NoteFromJson(json);
}

@freezed
class Notes with _$Notes {
  const factory Notes({
    @Default(<String, Note>{}) final Map<String, Note> cache,
    @Default('') final String query,
  }) = _Notes;
  const Notes._();
  List<Note> get allNotes => cache.values.toList();
  List<Note> get removedNotes => cache.values.where(
        (e) {
          return e.isRemoved;
        },
      ).toList();
  List<Note> get archivedNotes => cache.values
      .where(
        (e) => e.isArchived,
      )
      .toList();

  List<Note> get notes => cache.values
      .where(
        (element) => !element.isRemoved,
      )
      .toList();
  List<Note> get queriedNotes => cache.values
      .where(
        (
          eachNote,
        ) =>
            eachNote.title.toLowerCase().contains(
                  query.toLowerCase(),
                ),
      )
      .where(
        (eachNote) => !eachNote.isRemoved,
      )
      .toList();
  String get query => query;
  Note id(String id) => cache[id] ?? Note().copyWith(id: '');
  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}

final titleRM = RM('');
final descriptionRM = RM('');

class NotePod extends Manager<Notes> {
  NotePod() : super(Notes());

  void setNotes(Notes Function(Notes notes) notesModifier) =>
      state = notesModifier(state);

  void addNote(Note Function(Note newNote) noteModifier) {
    final note = noteModifier(Note());
    setNotes(
      (notes) => notes.copyWith(
        cache: Map.of(notes.cache)..[note.id] = note,
      ),
    );
  }

  void removeNote(Note note) {
    addNote(
      (_) => note.copyWith(isRemoved: true),
    );
  }

  void permanentlyRemoveNote(Note note) => setNotes(
        (notes) => notes.copyWith(
          cache: Map.of(notes.cache)..remove(note.id),
        ),
      );

  void setQuery(String query) => setNotes(
        (notes) => notes.copyWith(query: query),
      );
}
