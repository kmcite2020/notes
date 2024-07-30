import 'package:notes/main.dart';

import './settings.state.dart';

final settingsRM = SettingsState.initial().obs;

SettingsState get settingsState => settingsRM();
void setSettingsState(SettingsState state) => settingsRM(state);
void themeMode(ThemeMode? themeMode) =>
    setSettingsState(settingsState.copyWith(themeMode: themeMode));
void viewMode(ViewMode? viewMode) =>
    setSettingsState(settingsState.copyWith(viewMode: viewMode));
