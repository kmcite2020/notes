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

class SettingsRM {
  final state = RM(SettingsState());
  ThemeMode themeMode([ThemeMode? _themeMode]) {
    if (_themeMode != null) {
      state(
        state().copyWith(themeMode: _themeMode),
      );
    }
    return state().themeMode;
  }

  NotesViewMode notesViewMode([NotesViewMode? _notesViewMode]) {
    if (_notesViewMode != null) {
      state(
        state().copyWith(notesViewMode: _notesViewMode),
      );
    }
    return state().notesViewMode;
  }

  Duration deleteAfter([Duration? _deleteAfter]) {
    if (_deleteAfter != null) {
      state(
        state().copyWith(deleteAfter: _deleteAfter),
      );
    }
    return state().deleteAfter;
  }

  double borderRadius([double? _borderRadius]) {
    if (_borderRadius != null) {
      state(
        state().copyWith(borderRadius: _borderRadius),
      );
    }
    return state().borderRadius;
  }

  double padding([double? _padding]) {
    if (_padding != null) {
      state(
        state().copyWith(padding: _padding),
      );
    }
    return state().padding;
  }

  // @override
  // Persistor<SettingsState>? get persistor {
  //   return Persistor(
  //     key: 'settings',
  //     toJson: (s) => s.toJson(),
  //     fromJson: SettingsState.fromJson,
  //   );
  // }
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
