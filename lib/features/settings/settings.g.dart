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

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsHash() => r'42409b0c4a7406383416784b67f4c18552f4dbc2';

/// See also [Settings].
@ProviderFor(Settings)
final settingsProvider =
    AutoDisposeNotifierProvider<Settings, SettingsState>.internal(
  Settings.new,
  name: r'settingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$settingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Settings = AutoDisposeNotifier<SettingsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
