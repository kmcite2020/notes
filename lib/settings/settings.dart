import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/main.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

enum ViewMode { list, grid }

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ViewMode.list) final ViewMode viewMode,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(8.0) final double borderRadius,
    @Default(8.0) final double padding,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
