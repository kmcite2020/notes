// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotesCWProxy {
  Notes notesCache(Map<int, Note> notesCache);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Notes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Notes(...).copyWith(id: 12, name: "My name")
  /// ````
  Notes call({
    Map<int, Note>? notesCache,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNotes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNotes.copyWith.fieldName(...)`
class _$NotesCWProxyImpl implements _$NotesCWProxy {
  const _$NotesCWProxyImpl(this._value);

  final Notes _value;

  @override
  Notes notesCache(Map<int, Note> notesCache) => this(notesCache: notesCache);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Notes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Notes(...).copyWith(id: 12, name: "My name")
  /// ````
  Notes call({
    Object? notesCache = const $CopyWithPlaceholder(),
  }) {
    return Notes(
      notesCache:
          notesCache == const $CopyWithPlaceholder() || notesCache == null
              ? _value.notesCache
              // ignore: cast_nullable_to_non_nullable
              : notesCache as Map<int, Note>,
    );
  }
}

extension $NotesCopyWith on Notes {
  /// Returns a callable class that can be used as follows: `instanceOfNotes.copyWith(...)` or like so:`instanceOfNotes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotesCWProxy get copyWith => _$NotesCWProxyImpl(this);
}

abstract class _$NoteCWProxy {
  Note id(int id);

  Note title(String title);

  Note description(String description);

  Note isArchived(bool isArchived);

  Note isDeleted(bool isDeleted);

  Note dateTime(DateTime dateTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Note(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Note(...).copyWith(id: 12, name: "My name")
  /// ````
  Note call({
    int? id,
    String? title,
    String? description,
    bool? isArchived,
    bool? isDeleted,
    DateTime? dateTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNote.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNote.copyWith.fieldName(...)`
class _$NoteCWProxyImpl implements _$NoteCWProxy {
  const _$NoteCWProxyImpl(this._value);

  final Note _value;

  @override
  Note id(int id) => this(id: id);

  @override
  Note title(String title) => this(title: title);

  @override
  Note description(String description) => this(description: description);

  @override
  Note isArchived(bool isArchived) => this(isArchived: isArchived);

  @override
  Note isDeleted(bool isDeleted) => this(isDeleted: isDeleted);

  @override
  Note dateTime(DateTime dateTime) => this(dateTime: dateTime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Note(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Note(...).copyWith(id: 12, name: "My name")
  /// ````
  Note call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isArchived = const $CopyWithPlaceholder(),
    Object? isDeleted = const $CopyWithPlaceholder(),
    Object? dateTime = const $CopyWithPlaceholder(),
  }) {
    return Note(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      isArchived:
          isArchived == const $CopyWithPlaceholder() || isArchived == null
              ? _value.isArchived
              // ignore: cast_nullable_to_non_nullable
              : isArchived as bool,
      isDeleted: isDeleted == const $CopyWithPlaceholder() || isDeleted == null
          ? _value.isDeleted
          // ignore: cast_nullable_to_non_nullable
          : isDeleted as bool,
      dateTime: dateTime == const $CopyWithPlaceholder() || dateTime == null
          ? _value.dateTime
          // ignore: cast_nullable_to_non_nullable
          : dateTime as DateTime,
    );
  }
}

extension $NoteCopyWith on Note {
  /// Returns a callable class that can be used as follows: `instanceOfNote.copyWith(...)` or like so:`instanceOfNote.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NoteCWProxy get copyWith => _$NoteCWProxyImpl(this);
}

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetNoteCollection on Isar {
  IsarCollection<int, Note> get notes => this.collection();
}

const NoteSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Note',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'dateTime',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'isArchived',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'isDeleted',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Note>(
    serialize: serializeNote,
    deserialize: deserializeNote,
    deserializeProperty: deserializeNoteProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeNote(IsarWriter writer, Note object) {
  IsarCore.writeString(writer, 1, object.title);
  IsarCore.writeString(writer, 2, object.description);
  IsarCore.writeLong(writer, 3, object.dateTime.toUtc().microsecondsSinceEpoch);
  IsarCore.writeBool(writer, 4, object.isArchived);
  IsarCore.writeBool(writer, 5, object.isDeleted);
  return object.id;
}

@isarProtected
Note deserializeNote(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _title;
  _title = IsarCore.readString(reader, 1) ?? '';
  final String _description;
  _description = IsarCore.readString(reader, 2) ?? '';
  final DateTime _dateTime;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _dateTime = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _dateTime =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final bool _isArchived;
  _isArchived = IsarCore.readBool(reader, 4);
  final bool _isDeleted;
  _isDeleted = IsarCore.readBool(reader, 5);
  final object = Note(
    id: _id,
    title: _title,
    description: _description,
    dateTime: _dateTime,
    isArchived: _isArchived,
    isDeleted: _isDeleted,
  );
  return object;
}

@isarProtected
dynamic deserializeNoteProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 4:
      return IsarCore.readBool(reader, 4);
    case 5:
      return IsarCore.readBool(reader, 5);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _NoteUpdate {
  bool call({
    required int id,
    String? title,
    String? description,
    DateTime? dateTime,
    bool? isArchived,
    bool? isDeleted,
  });
}

class _NoteUpdateImpl implements _NoteUpdate {
  const _NoteUpdateImpl(this.collection);

  final IsarCollection<int, Note> collection;

  @override
  bool call({
    required int id,
    Object? title = ignore,
    Object? description = ignore,
    Object? dateTime = ignore,
    Object? isArchived = ignore,
    Object? isDeleted = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (title != ignore) 1: title as String?,
          if (description != ignore) 2: description as String?,
          if (dateTime != ignore) 3: dateTime as DateTime?,
          if (isArchived != ignore) 4: isArchived as bool?,
          if (isDeleted != ignore) 5: isDeleted as bool?,
        }) >
        0;
  }
}

sealed class _NoteUpdateAll {
  int call({
    required List<int> id,
    String? title,
    String? description,
    DateTime? dateTime,
    bool? isArchived,
    bool? isDeleted,
  });
}

class _NoteUpdateAllImpl implements _NoteUpdateAll {
  const _NoteUpdateAllImpl(this.collection);

  final IsarCollection<int, Note> collection;

  @override
  int call({
    required List<int> id,
    Object? title = ignore,
    Object? description = ignore,
    Object? dateTime = ignore,
    Object? isArchived = ignore,
    Object? isDeleted = ignore,
  }) {
    return collection.updateProperties(id, {
      if (title != ignore) 1: title as String?,
      if (description != ignore) 2: description as String?,
      if (dateTime != ignore) 3: dateTime as DateTime?,
      if (isArchived != ignore) 4: isArchived as bool?,
      if (isDeleted != ignore) 5: isDeleted as bool?,
    });
  }
}

extension NoteUpdate on IsarCollection<int, Note> {
  _NoteUpdate get update => _NoteUpdateImpl(this);

  _NoteUpdateAll get updateAll => _NoteUpdateAllImpl(this);
}

sealed class _NoteQueryUpdate {
  int call({
    String? title,
    String? description,
    DateTime? dateTime,
    bool? isArchived,
    bool? isDeleted,
  });
}

class _NoteQueryUpdateImpl implements _NoteQueryUpdate {
  const _NoteQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Note> query;
  final int? limit;

  @override
  int call({
    Object? title = ignore,
    Object? description = ignore,
    Object? dateTime = ignore,
    Object? isArchived = ignore,
    Object? isDeleted = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (title != ignore) 1: title as String?,
      if (description != ignore) 2: description as String?,
      if (dateTime != ignore) 3: dateTime as DateTime?,
      if (isArchived != ignore) 4: isArchived as bool?,
      if (isDeleted != ignore) 5: isDeleted as bool?,
    });
  }
}

extension NoteQueryUpdate on IsarQuery<Note> {
  _NoteQueryUpdate get updateFirst => _NoteQueryUpdateImpl(this, limit: 1);

  _NoteQueryUpdate get updateAll => _NoteQueryUpdateImpl(this);
}

class _NoteQueryBuilderUpdateImpl implements _NoteQueryUpdate {
  const _NoteQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Note, Note, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? title = ignore,
    Object? description = ignore,
    Object? dateTime = ignore,
    Object? isArchived = ignore,
    Object? isDeleted = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (title != ignore) 1: title as String?,
        if (description != ignore) 2: description as String?,
        if (dateTime != ignore) 3: dateTime as DateTime?,
        if (isArchived != ignore) 4: isArchived as bool?,
        if (isDeleted != ignore) 5: isDeleted as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension NoteQueryBuilderUpdate on QueryBuilder<Note, Note, QOperations> {
  _NoteQueryUpdate get updateFirst =>
      _NoteQueryBuilderUpdateImpl(this, limit: 1);

  _NoteQueryUpdate get updateAll => _NoteQueryBuilderUpdateImpl(this);
}

extension NoteQueryFilter on QueryBuilder<Note, Note, QFilterCondition> {
  QueryBuilder<Note, Note, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> dateTimeEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> dateTimeGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> dateTimeLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> dateTimeLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> isArchivedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Note, Note, QAfterFilterCondition> isDeletedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }
}

extension NoteQueryObject on QueryBuilder<Note, Note, QFilterCondition> {}

extension NoteQuerySortBy on QueryBuilder<Note, Note, QSortBy> {
  QueryBuilder<Note, Note, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByIsArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByIsArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension NoteQuerySortThenBy on QueryBuilder<Note, Note, QSortThenBy> {
  QueryBuilder<Note, Note, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByIsArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByIsArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<Note, Note, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension NoteQueryWhereDistinct on QueryBuilder<Note, Note, QDistinct> {
  QueryBuilder<Note, Note, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Note, Note, QAfterDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Note, Note, QAfterDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<Note, Note, QAfterDistinct> distinctByIsArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<Note, Note, QAfterDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension NoteQueryProperty1 on QueryBuilder<Note, Note, QProperty> {
  QueryBuilder<Note, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Note, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Note, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Note, DateTime, QAfterProperty> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Note, bool, QAfterProperty> isArchivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Note, bool, QAfterProperty> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension NoteQueryProperty2<R> on QueryBuilder<Note, R, QAfterProperty> {
  QueryBuilder<Note, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Note, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Note, (R, String), QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Note, (R, DateTime), QAfterProperty> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Note, (R, bool), QAfterProperty> isArchivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Note, (R, bool), QAfterProperty> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension NoteQueryProperty3<R1, R2>
    on QueryBuilder<Note, (R1, R2), QAfterProperty> {
  QueryBuilder<Note, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Note, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Note, (R1, R2, String), QOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Note, (R1, R2, DateTime), QOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Note, (R1, R2, bool), QOperations> isArchivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Note, (R1, R2, bool), QOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
