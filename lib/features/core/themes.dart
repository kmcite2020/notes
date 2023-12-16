import 'package:flutter/material.dart';
import '../settings/settings.dart';

class Themes {
  ThemeData theme() => ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.settings.materialColor,
        ),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
        ),
        scaffoldBackgroundColor: Colors.white,
      );
  ThemeData darkTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
      ),
      scaffoldBackgroundColor: Colors.black87,
    );
  }

  ThemeMode themeMode() => settingsManager.settings.themeMode;
}

final themes = Themes();
