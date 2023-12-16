// ignore_for_file: avoid_print

import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'notes.g.dart';

final notesRepository = NotesRepository();

class NotesRepository {
  Stream<List<Note>> watchNotes() {
    return isar.notes
        .where()
        .isDeletedEqualTo(false)
        .isArchivedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Stream<List<Note>> watchDeletedNotes() {
    return isar.notes
        .where()
        .isDeletedEqualTo(true)
        .watch(fireImmediately: true);
  }

  Stream<List<Note>> watchArchivedNotes() {
    return isar.notes
        .where()
        .isArchivedEqualTo(true)
        .watch(fireImmediately: true);
  }

  void addNote(Note note) => isar.write((isar) => isar.notes.put(note));
  void addNotes(List<Note> notes) =>
      isar.write((isar) => isar.notes.putAll(notes));
  void permanentlyDeleteNote(Note note) =>
      isar.write((isar) => isar.notes.delete(note.id));
  void deleteNote(Note note) =>
      isar.write((isar) => isar.notes.put(note.copyWith(isDeleted: true)));
  void undoDeleteNote(Note note) =>
      isar.write((isar) => isar.notes.put(note.copyWith(isDeleted: false)));
  void archiveNote(Note note) =>
      isar.write((isar) => isar.notes.put(note.copyWith(isArchived: true)));
}

@CopyWith()
class Notes {
  final Map<int, Note> notesCache;
  Notes({this.notesCache = const {}});

  int get length => notesCache.length;
}

@Collection()
@CopyWith()
class Note {
  @Id()
  final int id;
  final String title;
  final String description;
  final DateTime dateTime;
  final bool isArchived;
  final bool isDeleted;
  const Note({
    this.id = 1,
    this.title = '',
    this.description = '',
    this.isArchived = false,
    this.isDeleted = false,
    required this.dateTime,
  });
}

final NotesManager notesManager = NotesManager();

class NotesManager {
  late final notesRM = RM.injectStream(
    () => notesRepository.watchNotes().map(
          (listOfNotes) => notes.copyWith(
            notesCache: Map.fromEntries(
              listOfNotes.map(
                (eachNote) => MapEntry(eachNote.id, eachNote),
              ),
            ),
          ),
        ),
    initialState: Notes(),
  );

  void setNotes(Notes Function(Notes notes) notesModifier) {
    notesRM.state = notesModifier(notes);
  }

  Notes get notes => notesRM.state;
  void addNote(Note Function(Note newNote) noteModifier) {
    final note = noteModifier(Note(dateTime: DateTime.now()));
    notesRepository.addNote(note);
  }

  void removeNote(Note note) {
    notesRepository.deleteNote(note);
  }

  Note id({int? id}) =>
      notes.notesCache.values.firstWhere((element) => element.id == id);
}

final titleRM = RM.injectTextEditing(autoDispose: false);
final descriptionRM = RM.injectTextEditing(autoDispose: false);
final _noteRM = RM.inject<Note>(
  () => throw UnimplementedError(),
  sideEffects: SideEffects(
    onSetState: (snap) => notesManager.addNote((note) => snap.state),
  ),
);

class NotePage extends StatelessWidget {
  const NotePage({super.key, this.id});
  final int? id;
  @override
  Widget build(BuildContext context) {
    final note = notesManager.id(id: id);
    return _noteRM.inherited(
      builder: (context) {
        return const EditNoteUI();
      },
      stateOverride: () => note,
    );
  }
}

class EditNoteUI extends StatelessWidget {
  const EditNoteUI({super.key});

  @override
  Widget build(BuildContext context) {
    final note = _noteRM.of(context);
    final noteRM = _noteRM(context);
    void setTitle(String? title) {
      noteRM.state = note.copyWith(title: title!);
    }

    void setDescription(String? description) {
      noteRM.state = note.copyWith(description: description!);
    }

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          initialValue: note.title,
          decoration: const InputDecoration(
            hintText: 'type title note...',
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
            isDense: true,
          ),
          onChanged: setTitle,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          initialValue: note.description,
          expands: true,
          onChanged: setDescription,
          decoration: const InputDecoration(
            hintText: 'type title description...',
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
            isDense: true,
          ),
          maxLines: null,
        ),
      ),
      floatingActionButton: const BackButton(),
    );
  }
}
