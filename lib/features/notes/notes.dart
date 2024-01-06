import '../../main.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Note with _$Note {
  const factory Note.raw({
    @Default('') final String noteID,
    @Default('') final String title,
    @Default('') final String description,
    required final DateTime created,
    @Default(false) final bool isArchived,
    @Default(false) final bool isDeleted,
    @Default(true) final bool editing,
  }) = _Note;
  const Note._();

  factory Note() => Note.raw(noteID: randomID, created: DateTime.now());
  factory Note.fromJson(json) => _$NoteFromJson(json);
}

@freezed
class Notes with _$Notes {
  const factory Notes({
    @Default(<String, Note>{}) final Map<String, Note> cache,
    @Default('') final String query,
  }) = _Notes;

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}

final titleRM = RM.injectTextEditing(autoDispose: false);
final descriptionRM = RM.injectTextEditing(autoDispose: false);
