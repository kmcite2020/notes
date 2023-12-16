// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../../main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/navigator.dart';
import '../settings/settings.dart';
import 'notes.dart';

class NotesPage extends ReactiveStatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.large(
          actions: [
            IconButton(
              onPressed: () {
                notesManager.addNote((newNote) =>
                    newNote.copyWith.id(notesManager.notes.length));
              },
              icon: const Icon(Icons.note_add),
            ).pad(
              padding: const EdgeInsets.only(right: 8),
            ),
          ],
          title: const SearchBar(),
        ),
        switch (settingsManager.settings.notesViewMode) {
          NotesViewMode.grid => SliverGrid.builder(
              itemCount: notesManager.notes.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final note =
                    notesManager.notes.notesCache.values.toList()[index];
                return NoteItem(
                  note: note,
                  onNoteDeleted: notesManager.removeNote,
                );
              },
            ),
          NotesViewMode.list => SliverList.builder(
              itemCount: notesManager.notes.length,
              itemBuilder: (context, index) {
                final note =
                    notesManager.notes.notesCache.values.toList()[index];
                return NoteItem(
                  note: note,
                  onNoteDeleted: notesManager.removeNote,
                );
              },
            ),
        },
      ],
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
    this.onNoteDeleted,
  });

  final void Function(Note note)? onNoteDeleted;
  final Note note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigator.to(NotePage(id: note.id)),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  note.title.text(scale: 2).pad(),
                  note.description.text(scale: 1).pad(),
                ],
              ),
              height: 200,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: IconButton(
                onPressed: () => onNoteDeleted?.call(note),
                icon: const Icon(Icons.delete),
              ),
            ),
          ],
        ).pad(),
      ).pad(),
    );
  }
}
