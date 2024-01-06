// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      noteID: json['noteID'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      created: DateTime.parse(json['created'] as String),
      isArchived: json['isArchived'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      editing: json['editing'] as bool? ?? true,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'noteID': instance.noteID,
      'title': instance.title,
      'description': instance.description,
      'created': instance.created.toIso8601String(),
      'isArchived': instance.isArchived,
      'isDeleted': instance.isDeleted,
      'editing': instance.editing,
    };

_$NotesImpl _$$NotesImplFromJson(Map<String, dynamic> json) => _$NotesImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Note.fromJson(e)),
          ) ??
          const <String, Note>{},
      query: json['query'] as String? ?? '',
    );

Map<String, dynamic> _$$NotesImplToJson(_$NotesImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
      'query': instance.query,
    };
