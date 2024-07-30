import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

enum NoteStatus { Complete, Incomplete }

@freezed
class Note with _$Note {
  const factory Note.internal({
    @Default('') final String id,
    @Default('') final String title,
    @Default('') final String details,
    @Default(NoteStatus.Incomplete) final NoteStatus noteStatus,
    required final DateTime dueDate,
    required final DateTime timeCreated,
  }) = _Note;

  factory Note() => Note.internal(
        dueDate: DateTime.now(),
        timeCreated: DateTime.now(),
      );

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
class Notes with _$Notes {
  const factory Notes({
    @Default(<String, Note>{}) final Map<String, Note> cache,
  }) = _Notes;

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}
