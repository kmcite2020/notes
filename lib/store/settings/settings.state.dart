import '../../main.dart';

class SettingsState {
  final ThemeMode themeMode;

  final ViewMode viewMode;

  SettingsState(
    this.viewMode,
    this.themeMode,
  );

  factory SettingsState.initial() =>
      SettingsState(ViewMode.grid, ThemeMode.system);

  SettingsState copyWith({ViewMode? viewMode, ThemeMode? themeMode}) {
    return SettingsState(
      viewMode ?? this.viewMode,
      themeMode ?? this.themeMode,
    );
  }

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is SettingsState &&
          runtimeType == other.runtimeType &&
          viewMode == other.viewMode &&
          themeMode == other.themeMode;

  @override
  int get hashCode =>
      super.hashCode ^
      runtimeType.hashCode ^
      viewMode.hashCode ^
      themeMode.hashCode;

  @override
  String toString() =>
      "SettingsState { viewMode: $viewMode,  themeMode: $themeMode}";
}
