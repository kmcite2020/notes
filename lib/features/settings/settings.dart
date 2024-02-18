import 'package:manager/state_manager/management/notifier.dart';

import '../../main.dart';

part 'settings.g.dart';
part 'settings.freezed.dart';

enum NotesViewMode { list, grid }

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    // @MaterialColorConverter()
    // @Default(Colors.blue)
    // final MaterialColor materialColor,
    @Default(NotesViewMode.list) final NotesViewMode notesViewMode,
    @Default(const Duration(days: 30)) final Duration deleteAfter,
    @Default(8.0) final double padding,
    @Default(8.0) final double borderRadius,
  }) = _Settings;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}

final settingsRM = SettingsRM();

class SettingsRM extends Notifier<SettingsState> {
  @override
  SettingsState get initialState => SettingsState();
  void setThemeMode(ThemeMode? _) => state = state.copyWith(themeMode: _!);

  void setNotesViewMode(NotesViewMode? _) =>
      state = state.copyWith(notesViewMode: _!);

  void setDeletionDuration(Duration duration) =>
      state = state.copyWith(deleteAfter: duration);
  @override
  Persistor<SettingsState>? get persistor {
    return Persistor(
      key: 'settings',
      toJson: (s) => s.toJson(),
      fromJson: SettingsState.fromJson,
    );
  }
}

// class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
//   const MaterialColorConverter();
//   @override
//   int toJson(MaterialColor object) {
//     return Colors.primaries.indexOf(object);
//   }

//   @override
//   MaterialColor fromJson(int json) {
//     return Colors.primaries[json];
//   }
// }
