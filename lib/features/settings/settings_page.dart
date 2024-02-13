import 'package:flutter/cupertino.dart';

import '../../main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsState = ref.watch(settingsProvider);
    final settingsManager = ref.watch(settingsProvider.notifier);

    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: switch (settingsState.themeMode) {
          ThemeMode.dark => Brightness.dark,
          ThemeMode.light => Brightness.light,
          ThemeMode.system => Theme.of(context).brightness,
        },
      ),
      home: CupertinoPageScaffold(
        child: ListView(
          children: [
            CupertinoPicker.builder(
              childCount: ThemeMode.values.length,
              itemBuilder: (BuildContext context, int index) {
                return ThemeMode.values[index].name.toUpperCase().text();
              },
              onSelectedItemChanged: (int value) {
                final x = ThemeMode.values[value];
                settingsManager.setThemeMode(x);
              },
              itemExtent: 30,
            ).pad(),

            // DropdownButtonFormField(
            //   value: settingsManager.settings.themeMode,
            //   items: ThemeMode.values
            //       .map(
            //         (eachThemeMode) => DropdownMenuItem(
            //           value: eachThemeMode,
            //           child: Text(
            //             eachThemeMode.name.toUpperCase(),
            //           ),
            //         ),
            //       )
            //       .toList(),
            //   onChanged: settingsManager.setThemeMode,
            // ).pad(),
            // DropdownButtonFormField(
            //   value: settingsManager.settings.notesViewMode,
            //   items: NotesViewMode.values
            //       .map(
            //         (eachThemeMode) => DropdownMenuItem(
            //           value: eachThemeMode,
            //           child: Text(
            //             eachThemeMode.name.toUpperCase(),
            //           ),
            //         ),
            //       )
            //       .toList(),
            //   onChanged: settingsManager.setNotesViewMode,
            // ).pad(),
            // DropdownButtonFormField(
            //   value: settingsManager.settings.materialColor,
            //   items: Colors.primaries
            //       .map(
            //         (eachColor) => DropdownMenuItem(
            //           value: eachColor,
            //           child: Text(
            //             eachColor.colorName.toUpperCase().toString(),
            //           ),
            //         ),
            //       )
            //       .toList(),
            //   onChanged: settingsManager.setMaterialColor,
            // ).pad(),
            'DELETE NOTES PERMANENTLY AFTER ${settingsState.deleteAfter.inDays} DAYS'
                .text(scale: 2)
                .pad()
                .pad(),
            CupertinoSlider(
              min: 10.0,
              max: 30.0,
              value: settingsState.deleteAfter.inDays.toDouble(),
              onChanged: (onChanged) {
                settingsManager.setDeletionDuration(
                  Duration(
                    days: onChanged.toInt(),
                  ),
                );
              },
            ).pad(),
            ref.watch(notePodProvider).allNotes.length.text(scale: 5).pad(),
            CupertinoButton.filled(
              onPressed: () {
                navigator.to(ArchivesPage());
              },
              child: Icon(CupertinoIcons.archivebox),
            ).pad(),
            CupertinoButton.filled(
              onPressed: () {
                navigator.to(RemovedNotesPage());
              },
              child: Icon(CupertinoIcons.delete),
            ).pad(),
          ],
        ),
        navigationBar: CupertinoNavigationBar(
          middle: 'Settings'.text(),
          leading: CupertinoButton(
            onPressed: () {
              navigator.back();
            },
            child: Icon(CupertinoIcons.back),
          ),
        ),
      ),
    );
  }
}
