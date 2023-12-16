import 'dart:convert';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings.g.dart';

enum NotesViewMode { list, grid }

@CopyWith()
@JsonSerializable()
class Settings {
  final ThemeMode themeMode;
  @MaterialColorConverter()
  final MaterialColor materialColor;
  final NotesViewMode notesViewMode;
  final Duration deleteAfter;

  const Settings({
    this.themeMode = ThemeMode.system,
    this.notesViewMode = NotesViewMode.list,
    this.materialColor = Colors.blue,
    this.deleteAfter = const Duration(days: 30),
  });
  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}

final settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      toJson: (s) => jsonEncode(s.toJson()),
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
    ),
  );
  Settings get settings => settingsRM.state;
  set settings(Settings _) => settingsRM.state = _;
  void setThemeMode(ThemeMode? _) {
    settings = settings.copyWith.themeMode(_!);
  }

  void setNotesViewMode(NotesViewMode? _) {
    settings = settings.copyWith(notesViewMode: _!);
  }

  void setMaterialColor(MaterialColor? value) {
    settings = settings.copyWith(materialColor: value!);
  }

  void setDeletionDuration(Duration duration) {
    settings = settings.copyWith(deleteAfter: duration);
  }
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  int toJson(MaterialColor object) {
    return Colors.primaries.indexOf(object);
  }

  @override
  MaterialColor fromJson(int json) {
    return Colors.primaries[json];
  }
}
