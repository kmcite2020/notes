import 'package:notes/extenions.dart';
import 'package:notes/main.dart';

import '../navigation/navigation.action.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
        actions: [
          IconButton(
            onPressed: () => Navigation(NotesPage()),
            icon: Icon(Icons.home),
          ).pad(),
        ],
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settingsState.themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: Text(eachThemeMode.name.toUpperCase()),
                );
              },
            ).toList(),
            onChanged: themeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settingsState.viewMode,
            items: ViewMode.values.map(
              (eachViewMode) {
                return DropdownMenuItem(
                  value: eachViewMode,
                  child: Text(eachViewMode.name.toUpperCase()),
                );
              },
            ).toList(),
            onChanged: viewMode,
          ).pad(),
        ],
      ),
    );
  }
}
