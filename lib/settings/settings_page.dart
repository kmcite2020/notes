import 'package:notes/main.dart';
import 'package:notes/settings/settings.dart';

import 'settings_bloc.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: 'Settings'.text(),
        actions: [
          IconButton(
            onPressed: navigator.back,
            icon: Icon(Icons.home),
          ).pad(),
        ],
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: themeMode(),
            items: themeModes.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: Text(eachThemeMode.toUpperCase()),
                );
              },
            ).toList(),
            onChanged: themeMode,
          ).pad(),
          DropdownButtonFormField(
            value: viewMode(),
            items: viewModes.map(
              (eachViewMode) {
                return DropdownMenuItem(
                  value: eachViewMode,
                  child: Text(eachViewMode.toUpperCase()),
                );
              },
            ).toList(),
            onChanged: viewMode,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              setBox.removeAll();
            },
            child: 'RESET'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
