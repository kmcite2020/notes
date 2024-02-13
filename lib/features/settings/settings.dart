import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

enum NotesViewMode { list, grid }

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @MaterialColorConverter()
    @Default(Colors.blue)
    final MaterialColor materialColor,
    @Default(NotesViewMode.list) final NotesViewMode notesViewMode,
    @Default(const Duration(days: 30)) final Duration deleteAfter,
    @Default(8.0) final double padding,
  }) = _Settings;

  factory SettingsState.fromJson(json) => _$SettingsStateFromJson(json);
}

@riverpod
class Settings extends _$Settings {
  SettingsState build() => SettingsState();
  void setThemeMode(ThemeMode? _) {
    state = state.copyWith(themeMode: _!);
  }

  void setNotesViewMode(NotesViewMode? _) {
    state = state.copyWith(notesViewMode: _!);
  }

  void setMaterialColor(MaterialColor? value) {
    state = state.copyWith(materialColor: value!);
  }

  void setDeletionDuration(Duration duration) {
    state = state.copyWith(deleteAfter: duration);
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
