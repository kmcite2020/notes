import '../../../main.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // toolbarHeight: 80,
          actions: [
            IconButton(
              onPressed: () => navigator.to(SettingsPage()),
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                // ref.watch(notePodProvider.notifier).addNote(
                //       (newNote) => newNote,
                //     );
              },
              icon: const Icon(Icons.add_box_sharp),
            ).pad(
              padding: const EdgeInsets.only(right: 8),
            ),
          ]

          // title: SearchBar(
          //   onChanged: ref.watch(notePodProvider.notifier).setQuery,
          //   hintText: 'Search by Note\'s title.',
          // ),
          ),
      // body: switch (settingsState.notesViewMode) {
      //   NotesViewMode.grid => GridView.builder(
      //       itemCount: ref.watch(notePodProvider).query.isEmpty
      //           ? ref.watch(notePodProvider).notes.length
      //           : ref.watch(notePodProvider).queriedNotes.length,
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //       ),
      //       itemBuilder: (context, index) {
      //         final note = ref.watch(notePodProvider).query.isEmpty
      //             ? ref.watch(notePodProvider).notes[index]
      //             : ref.watch(notePodProvider).queriedNotes[index];
      //         return NoteItem(
      //           note: note,
      //           onNoteDeleted: ref.watch(notePodProvider.notifier).removeNote,
      //         );
      //       },
      //     ),
      //   NotesViewMode.list => ListView.builder(
      //       itemCount: ref.watch(notePodProvider).query.isEmpty
      //           ? ref.watch(notePodProvider).notes.length
      //           : ref.watch(notePodProvider).queriedNotes.length,
      //       itemBuilder: (context, index) {
      //         final note = ref.watch(notePodProvider).query.isEmpty
      //             ? ref.watch(notePodProvider).notes[index]
      //             : ref.watch(notePodProvider).queriedNotes[index];
      //         return NoteItem(
      //           note: note,
      //           onNoteDeleted: ref.watch(notePodProvider.notifier).removeNote,
      //         );
      //       },
      //     ),
      // },
    );
  }
}
