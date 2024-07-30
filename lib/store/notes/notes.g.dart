// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      details: json['details'] as String? ?? '',
      noteStatus:
          $enumDecodeNullable(_$NoteStatusEnumMap, json['noteStatus']) ??
              NoteStatus.Incomplete,
      dueDate: DateTime.parse(json['dueDate'] as String),
      timeCreated: DateTime.parse(json['timeCreated'] as String),
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'noteStatus': _$NoteStatusEnumMap[instance.noteStatus]!,
      'dueDate': instance.dueDate.toIso8601String(),
      'timeCreated': instance.timeCreated.toIso8601String(),
    };

const _$NoteStatusEnumMap = {
  NoteStatus.Complete: 'Complete',
  NoteStatus.Incomplete: 'Incomplete',
};

_$NotesImpl _$$NotesImplFromJson(Map<String, dynamic> json) => _$NotesImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Note.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Note>{},
    );

Map<String, dynamic> _$$NotesImplToJson(_$NotesImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
