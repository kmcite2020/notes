// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      materialColor: json['materialColor'] == null
          ? Colors.blue
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      notesViewMode:
          $enumDecodeNullable(_$NotesViewModeEnumMap, json['notesViewMode']) ??
              NotesViewMode.list,
      deleteAfter: json['deleteAfter'] == null
          ? const Duration(days: 30)
          : Duration(microseconds: json['deleteAfter'] as int),
      padding: (json['padding'] as num?)?.toDouble() ?? 8.0,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
      'notesViewMode': _$NotesViewModeEnumMap[instance.notesViewMode]!,
      'deleteAfter': instance.deleteAfter.inMicroseconds,
      'padding': instance.padding,
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
