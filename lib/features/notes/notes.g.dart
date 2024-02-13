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

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notePodHash() => r'b6efded3e6a7066489791c66370f75a7ba213a47';

/// See also [NotePod].
@ProviderFor(NotePod)
final notePodProvider = AutoDisposeNotifierProvider<NotePod, Notes>.internal(
  NotePod.new,
  name: r'notePodProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$notePodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NotePod = AutoDisposeNotifier<Notes>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
