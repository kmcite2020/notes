import '../../main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

final notesRM = NotesRM();

class NotesRM extends Cubit<Notes> {
  NotesRM()
      : super(
          Notes(),
          persistor: Persistor(
            key: 'notes',
            toJson: (state) => state.toJson(),
            fromJson: Notes.fromJson,
          ),
        );

  void addNote(Note note) {
    state = state.copyWith(
      cache: state.cache..add(note),
    );
  }

  void removeNote(Note note) {
    state = state.copyWith(
      cache: state.cache..remove(note),
    );
  }

  void setQuery(String query) => state = state.copyWith(query: query);
}

class NotesRepository {
  static const databaseId = '';
  static const collectionId = '';
  Future<List<Note>> getNotes() async => databases.listDocuments(
        databaseId: databaseId,
        collectionId: collectionId,
        queries: [
          Query.limit(9999),
        ],
      ).then(
        (value) => value.documents
            .map(
              (e) => Note.fromJson(e.data),
            )
            .toList(),
      );
  addNote(Note note) async => databases.createDocument(
        databaseId: databaseId,
        collectionId: collectionId,
        documentId: note.id,
        data: note.toJson(),
      );

  removeNote(Note note) => databases.deleteDocument(
        databaseId: databaseId,
        collectionId: collectionId,
        documentId: note.id,
      );
}

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
    @Default(<Note>[]) final List<Note> cache,
    @Default('') final String query,
  }) = _Notes;
  const Notes._();
  List<Note> get allNotes => cache;
  List<Note> get removedNotes => cache.where(
        (e) {
          return e.isRemoved;
        },
      ).toList();
  List<Note> get archivedNotes => cache
      .where(
        (e) => e.isArchived,
      )
      .toList();

  List<Note> get notes => cache
      .where(
        (element) => !element.isRemoved,
      )
      .toList();
  List<Note> get queriedNotes => cache
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
  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}

final titleRM = RM('');
final descriptionRM = RM('');
