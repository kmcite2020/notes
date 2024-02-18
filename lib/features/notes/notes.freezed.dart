// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  bool get isArchived => throw _privateConstructorUsedError;
  bool get isRemoved => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String description,
            DateTime created, bool isArchived, bool isRemoved, bool editing)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String description,
            DateTime created, bool isArchived, bool isRemoved, bool editing)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String description,
            DateTime created, bool isArchived, bool isRemoved, bool editing)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Note value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Note value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Note value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime created,
      bool isArchived,
      bool isRemoved,
      bool editing});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? created = null,
    Object? isArchived = null,
    Object? isRemoved = null,
    Object? editing = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoved: null == isRemoved
          ? _value.isRemoved
          : isRemoved // ignore: cast_nullable_to_non_nullable
              as bool,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime created,
      bool isArchived,
      bool isRemoved,
      bool editing});
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? created = null,
    Object? isArchived = null,
    Object? isRemoved = null,
    Object? editing = null,
  }) {
    return _then(_$NoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoved: null == isRemoved
          ? _value.isRemoved
          : isRemoved // ignore: cast_nullable_to_non_nullable
              as bool,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl extends _Note {
  const _$NoteImpl(
      {this.id = '',
      this.title = '',
      this.description = '',
      required this.created,
      this.isArchived = false,
      this.isRemoved = false,
      this.editing = true})
      : super._();

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime created;
  @override
  @JsonKey()
  final bool isArchived;
  @override
  @JsonKey()
  final bool isRemoved;
  @override
  @JsonKey()
  final bool editing;

  @override
  String toString() {
    return 'Note.raw(id: $id, title: $title, description: $description, created: $created, isArchived: $isArchived, isRemoved: $isRemoved, editing: $editing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            (identical(other.isRemoved, isRemoved) ||
                other.isRemoved == isRemoved) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, created,
      isArchived, isRemoved, editing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String description,
            DateTime created, bool isArchived, bool isRemoved, bool editing)
        raw,
  }) {
    return raw(id, title, description, created, isArchived, isRemoved, editing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String description,
            DateTime created, bool isArchived, bool isRemoved, bool editing)?
        raw,
  }) {
    return raw?.call(
        id, title, description, created, isArchived, isRemoved, editing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String description,
            DateTime created, bool isArchived, bool isRemoved, bool editing)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(
          id, title, description, created, isArchived, isRemoved, editing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Note value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Note value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Note value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note extends Note {
  const factory _Note(
      {final String id,
      final String title,
      final String description,
      required final DateTime created,
      final bool isArchived,
      final bool isRemoved,
      final bool editing}) = _$NoteImpl;
  const _Note._() : super._();

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get created;
  @override
  bool get isArchived;
  @override
  bool get isRemoved;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return _Notes.fromJson(json);
}

/// @nodoc
mixin _$Notes {
  List<Note> get cache => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesCopyWith<Notes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesCopyWith<$Res> {
  factory $NotesCopyWith(Notes value, $Res Function(Notes) then) =
      _$NotesCopyWithImpl<$Res, Notes>;
  @useResult
  $Res call({List<Note> cache, String query});
}

/// @nodoc
class _$NotesCopyWithImpl<$Res, $Val extends Notes>
    implements $NotesCopyWith<$Res> {
  _$NotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesImplCopyWith<$Res> implements $NotesCopyWith<$Res> {
  factory _$$NotesImplCopyWith(
          _$NotesImpl value, $Res Function(_$NotesImpl) then) =
      __$$NotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> cache, String query});
}

/// @nodoc
class __$$NotesImplCopyWithImpl<$Res>
    extends _$NotesCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
      _$NotesImpl _value, $Res Function(_$NotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? query = null,
  }) {
    return _then(_$NotesImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotesImpl extends _Notes {
  const _$NotesImpl({final List<Note> cache = const <Note>[], this.query = ''})
      : _cache = cache,
        super._();

  factory _$NotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesImplFromJson(json);

  final List<Note> _cache;
  @override
  @JsonKey()
  List<Note> get cache {
    if (_cache is EqualUnmodifiableListView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cache);
  }

  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'Notes(cache: $cache, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cache), query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      __$$NotesImplCopyWithImpl<_$NotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesImplToJson(
      this,
    );
  }
}

abstract class _Notes extends Notes {
  const factory _Notes({final List<Note> cache, final String query}) =
      _$NotesImpl;
  const _Notes._() : super._();

  factory _Notes.fromJson(Map<String, dynamic> json) = _$NotesImpl.fromJson;

  @override
  List<Note> get cache;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
