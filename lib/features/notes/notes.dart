import 'package:extensions/extensions.dart';
import 'package:notes/features/notes/notes_repository.dart';

import '../../main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

final notesRM = NotesRM()..getNotes();

class NotesRM extends Cubit<Notes> {
  NotesRM();
  @override
  Persistor<Notes>? get persistor => Persistor(
        key: 'notes',
        toJson: (state) => state.toJson(),
        fromJson: Notes.fromJson,
      );

  @override
  Notes get initialState => Notes();

  void getNotes() async {
    state = state.copyWith(loading: true);
    state = state.copyWith(
      cache: await notesRepository.getAllNotes().catchError(
        (_) {
          return <Note>[];
        },
      ),
    );
    state = state.copyWith(loading: false);
  }

  void addNote(Note note) async {
    state = state.copyWith(loading: true);
    await notesRepository.addNote(note);
    getNotes();
  }

  void removeNote(Note note) async {
    state = state.copyWith(loading: true);
    await notesRepository.removeNote(note);
    getNotes();
  }

  void setQuery(String query) => state = state.copyWith(query: query);
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
    @Default(true) final bool loading,
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
