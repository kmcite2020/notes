import 'package:extensions/extensions.dart';

import '../../main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settingsRM.themeMode(),
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: settingsRM.themeMode.call,
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM.notesViewMode(),
            items: NotesViewMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: settingsRM.notesViewMode.call,
          ).pad(),
          ElevatedButton(
            onPressed: notesRM.state.loading
                ? null
                : () {
                    notesRM.getNotes();
                  },
            child: notesRM.state.loading
                ? CircularProgressIndicator().pad()
                : 'Synchronize State'.text().pad(),
          ).pad()
        ],
      ),
    );
  }
}
