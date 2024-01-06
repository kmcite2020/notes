import '../../main.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: BackButton(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsManager.settings.themeMode,
              items: ThemeMode.values
                  .map(
                    (eachThemeMode) => DropdownMenuItem(
                      value: eachThemeMode,
                      child: Text(
                        eachThemeMode.name.toUpperCase(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: settingsManager.setThemeMode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsManager.settings.notesViewMode,
              items: NotesViewMode.values
                  .map(
                    (eachThemeMode) => DropdownMenuItem(
                      value: eachThemeMode,
                      child: Text(
                        eachThemeMode.name.toUpperCase(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: settingsManager.setNotesViewMode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              value: settingsManager.settings.materialColor,
              items: Colors.primaries
                  .map(
                    (eachColor) => DropdownMenuItem(
                      value: eachColor,
                      child: Text(
                        eachColor.colorName.toUpperCase().toString(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: settingsManager.setMaterialColor,
            ),
          ),
          'DELETE NOTES PERMANENTLY AFTER ${settingsManager.settings.deleteAfter.inDays} DAYS'
              .text(scale: 2)
              .pad()
              .pad(),
          Slider(
            min: 10.0,
            max: 30.0,
            value: settingsManager.settings.deleteAfter.inDays.toDouble(),
            onChanged: (onChanged) {
              settingsManager.setDeletionDuration(
                Duration(
                  days: onChanged.toInt(),
                ),
              );
            },
          ).pad(),
          notesManager.allNotes.length.text(scale: 5).pad(),
        ],
      ),
    );
  }
}
