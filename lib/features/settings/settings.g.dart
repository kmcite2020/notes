// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SettingsCWProxy {
  Settings themeMode(ThemeMode themeMode);

  Settings notesViewMode(NotesViewMode notesViewMode);

  Settings materialColor(MaterialColor materialColor);

  Settings deleteAfter(Duration deleteAfter);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Settings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Settings(...).copyWith(id: 12, name: "My name")
  /// ````
  Settings call({
    ThemeMode? themeMode,
    NotesViewMode? notesViewMode,
    MaterialColor? materialColor,
    Duration? deleteAfter,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSettings.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSettings.copyWith.fieldName(...)`
class _$SettingsCWProxyImpl implements _$SettingsCWProxy {
  const _$SettingsCWProxyImpl(this._value);

  final Settings _value;

  @override
  Settings themeMode(ThemeMode themeMode) => this(themeMode: themeMode);

  @override
  Settings notesViewMode(NotesViewMode notesViewMode) =>
      this(notesViewMode: notesViewMode);

  @override
  Settings materialColor(MaterialColor materialColor) =>
      this(materialColor: materialColor);

  @override
  Settings deleteAfter(Duration deleteAfter) => this(deleteAfter: deleteAfter);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Settings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Settings(...).copyWith(id: 12, name: "My name")
  /// ````
  Settings call({
    Object? themeMode = const $CopyWithPlaceholder(),
    Object? notesViewMode = const $CopyWithPlaceholder(),
    Object? materialColor = const $CopyWithPlaceholder(),
    Object? deleteAfter = const $CopyWithPlaceholder(),
  }) {
    return Settings(
      themeMode: themeMode == const $CopyWithPlaceholder() || themeMode == null
          ? _value.themeMode
          // ignore: cast_nullable_to_non_nullable
          : themeMode as ThemeMode,
      notesViewMode:
          notesViewMode == const $CopyWithPlaceholder() || notesViewMode == null
              ? _value.notesViewMode
              // ignore: cast_nullable_to_non_nullable
              : notesViewMode as NotesViewMode,
      materialColor:
          materialColor == const $CopyWithPlaceholder() || materialColor == null
              ? _value.materialColor
              // ignore: cast_nullable_to_non_nullable
              : materialColor as MaterialColor,
      deleteAfter:
          deleteAfter == const $CopyWithPlaceholder() || deleteAfter == null
              ? _value.deleteAfter
              // ignore: cast_nullable_to_non_nullable
              : deleteAfter as Duration,
    );
  }
}

extension $SettingsCopyWith on Settings {
  /// Returns a callable class that can be used as follows: `instanceOfSettings.copyWith(...)` or like so:`instanceOfSettings.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SettingsCWProxy get copyWith => _$SettingsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      notesViewMode:
          $enumDecodeNullable(_$NotesViewModeEnumMap, json['notesViewMode']) ??
              NotesViewMode.list,
      materialColor: json['materialColor'] == null
          ? Colors.blue
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      deleteAfter: json['deleteAfter'] == null
          ? const Duration(days: 30)
          : Duration(microseconds: json['deleteAfter'] as int),
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'notesViewMode': _$NotesViewModeEnumMap[instance.notesViewMode]!,
      'deleteAfter': instance.deleteAfter.inMicroseconds,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$NotesViewModeEnumMap = {
  NotesViewMode.list: 'list',
  NotesViewMode.grid: 'grid',
};
