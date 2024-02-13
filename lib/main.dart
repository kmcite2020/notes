import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes/main.dart';

export 'dart:convert';
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:notes/features/core/hive_storage.dart';
export 'package:notes/features/core/injections.dart';
export 'package:notes/features/core/navigator.dart';
export 'package:notes/features/home.dart';
export 'package:notes/features/notes/notes.dart';
export 'package:notes/features/settings/settings.dart';
export 'package:path_provider/path_provider.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:notes/features/core/extensions.dart';
export 'package:notes/features/notes/components/note_item.dart';
export 'package:notes/features/archives.dart';
export 'package:notes/features/drawer.dart';
export 'package:notes/features/feedback.dart';

export 'package:notes/features/notes/pages/notes_page.dart';
export 'package:notes/features/reminders.dart';
export 'package:notes/features/settings/settings_page.dart';
export 'package:notes/features/removed_notes_page.dart';

// part 'main.freezed.dart';
// part 'main.g.dart';

typedef UI = ReactiveStatelessWidget;

final client = Client()
  ..setEndpoint('https://cloud.appwrite.io/v1')
  ..setProject('65bf124656e96417fead');

final databases = Databases(client);
final notesRepository = NotesRepository();

class NotesList {
  final build = RM.injectFuture(
    () => notesRepository.getAllNotes(),
  );

  void addNote(Note note) {
    notesRepository.addNote(note);
    build.refresh();
  }

  void updateNote(Note note) {
    notesRepository.updateNote(note);
    build.refresh();
  }

  late final when = build.onAll;
}

final NotesList notesList = NotesList();

class NotesRepository {
  static const databaseId = '65bf16ef54994dc50176';
  static const collectionId = '65bf16f8e10c8eaba75a';

  Future<List<Note>> getAllNotes() {
    return databases
        .listDocuments(
          databaseId: databaseId,
          collectionId: collectionId,
        )
        .then(
          (documentList) => documentList.documents
              .map(
                (eachDocument) => Note.fromJson(eachDocument.data),
              )
              .toList(),
        );
  }

  Future<Note> addNote(Note note) {
    return databases
        .createDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: note.id,
      data: note.toJson(),
    )
        .then(
      (eachDocument) {
        return Note.fromJson(eachDocument.data);
      },
    ).catchError(
      (e) {
        throw e;
      },
    );
  }

  Future removeNote(Note note) {
    return databases.deleteDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: note.id,
    );
  }

  Future updateNote(Note note) => databases
          .updateDocument(
        databaseId: databaseId,
        collectionId: collectionId,
        documentId: note.id,
        data: note.toJson(),
      )
          .then((value) {
        // return ref.invalidateSelf();
      });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  runApp(App());
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // final settingsState = ref.watch(settingsProvider);
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigator.navigatorKey,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: 'NOTES'.text(),
          trailing: IconButton(
            icon: Icon(CupertinoIcons.add),
            onPressed: () {
              notesList.addNote(
                Note(),
              );
            },
          ),
        ),
        child: notesList.when(
          onData: (data) => CupertinoListSection(
            header: 'Hello'.text(),
            children: data.map(
              (eachNote) {
                return CupertinoListTile(
                  title: eachNote.title.text(),
                  subtitle: eachNote.description.text(),
                  additionalInfo: eachNote.editing.text(),
                  onTap: () {
                    notesList.updateNote(
                      eachNote.copyWith(editing: !eachNote.editing),
                    );
                  },
                );
              },
            ).toList(),
          ),
          onError: (_, __) => CircularProgressIndicator(),
          onWaiting: () => CircularProgressIndicator(),
        ),
      ),
    );
    // return MaterialApp(
    //   navigatorKey: navigator.navigatorKey,
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSwatch(
    //       primarySwatch: settingsState.materialColor,
    //     ),
    //     useMaterial3: true,
    //     inputDecorationTheme: InputDecorationTheme(
    //       border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(20),
    //       ),
    //       filled: true,
    //     ),
    //     scaffoldBackgroundColor: Colors.white,
    //   ),
    //   darkTheme: ThemeData(
    //     colorScheme: ColorScheme.fromSwatch(
    //       primarySwatch: settingsState.materialColor,
    //       brightness: Brightness.dark,
    //     ),
    //     useMaterial3: true,
    //     inputDecorationTheme: InputDecorationTheme(
    //       border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(20),
    //       ),
    //       filled: true,
    //     ),
    //     scaffoldBackgroundColor: Colors.black87,
    //   ),
    //   themeMode: settingsState.themeMode,
    //   home: NotesPage(),
    // );
  }
}
