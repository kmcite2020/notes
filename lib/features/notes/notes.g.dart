// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      created: DateTime.parse(json['created'] as String),
      isArchived: json['isArchived'] as bool? ?? false,
      isRemoved: json['isRemoved'] as bool? ?? false,
      editing: json['editing'] as bool? ?? true,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created': instance.created.toIso8601String(),
      'isArchived': instance.isArchived,
      'isRemoved': instance.isRemoved,
      'editing': instance.editing,
    };

_$NotesImpl _$$NotesImplFromJson(Map<String, dynamic> json) => _$NotesImpl(
      cache: (json['cache'] as List<dynamic>?)?.map(Note.fromJson).toList() ??
          const <Note>[],
      query: json['query'] as String? ?? '',
      loading: json['loading'] as bool? ?? true,
    );

Map<String, dynamic> _$$NotesImplToJson(_$NotesImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
      'query': instance.query,
      'loading': instance.loading,
    };
