import '../../main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

enum NotesViewMode { list, grid }

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @MaterialColorConverter()
    @Default(Colors.blue)
    final MaterialColor materialColor,
    @Default(NotesViewMode.list) final NotesViewMode notesViewMode,
    @Default(const Duration(days: 30)) final Duration deleteAfter,
    @Default(8.0) final double padding,
  }) = _Settings;

  factory Settings.fromJson(json) => _$SettingsFromJson(json);
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
    settings = settings.copyWith(themeMode: _!);
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
