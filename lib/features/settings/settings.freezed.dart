// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode get themeMode =>
      throw _privateConstructorUsedError; // @MaterialColorConverter()
// @Default(Colors.blue)
// final MaterialColor materialColor,
  NotesViewMode get notesViewMode => throw _privateConstructorUsedError;
  Duration get deleteAfter => throw _privateConstructorUsedError;
  double get padding => throw _privateConstructorUsedError;
  double get borderRadius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      NotesViewMode notesViewMode,
      Duration deleteAfter,
      double padding,
      double borderRadius});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? notesViewMode = null,
    Object? deleteAfter = null,
    Object? padding = null,
    Object? borderRadius = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      notesViewMode: null == notesViewMode
          ? _value.notesViewMode
          : notesViewMode // ignore: cast_nullable_to_non_nullable
              as NotesViewMode,
      deleteAfter: null == deleteAfter
          ? _value.deleteAfter
          : deleteAfter // ignore: cast_nullable_to_non_nullable
              as Duration,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      NotesViewMode notesViewMode,
      Duration deleteAfter,
      double padding,
      double borderRadius});
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? notesViewMode = null,
    Object? deleteAfter = null,
    Object? padding = null,
    Object? borderRadius = null,
  }) {
    return _then(_$SettingsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      notesViewMode: null == notesViewMode
          ? _value.notesViewMode
          : notesViewMode // ignore: cast_nullable_to_non_nullable
              as NotesViewMode,
      deleteAfter: null == deleteAfter
          ? _value.deleteAfter
          : deleteAfter // ignore: cast_nullable_to_non_nullable
              as Duration,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl implements _Settings {
  const _$SettingsImpl(
      {this.themeMode = ThemeMode.system,
      this.notesViewMode = NotesViewMode.list,
      this.deleteAfter = const Duration(days: 30),
      this.padding = 8.0,
      this.borderRadius = 8.0});

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
// @MaterialColorConverter()
// @Default(Colors.blue)
// final MaterialColor materialColor,
  @override
  @JsonKey()
  final NotesViewMode notesViewMode;
  @override
  @JsonKey()
  final Duration deleteAfter;
  @override
  @JsonKey()
  final double padding;
  @override
  @JsonKey()
  final double borderRadius;

  @override
  String toString() {
    return 'SettingsState(themeMode: $themeMode, notesViewMode: $notesViewMode, deleteAfter: $deleteAfter, padding: $padding, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.notesViewMode, notesViewMode) ||
                other.notesViewMode == notesViewMode) &&
            (identical(other.deleteAfter, deleteAfter) ||
                other.deleteAfter == deleteAfter) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, notesViewMode,
      deleteAfter, padding, borderRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings implements SettingsState {
  const factory _Settings(
      {final ThemeMode themeMode,
      final NotesViewMode notesViewMode,
      final Duration deleteAfter,
      final double padding,
      final double borderRadius}) = _$SettingsImpl;

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override // @MaterialColorConverter()
// @Default(Colors.blue)
// final MaterialColor materialColor,
  NotesViewMode get notesViewMode;
  @override
  Duration get deleteAfter;
  @override
  double get padding;
  @override
  double get borderRadius;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
