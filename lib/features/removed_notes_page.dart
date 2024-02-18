import '../main.dart';

class RemovedNotesPage extends UI {
  const RemovedNotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trash'),
      ),
      // body: ListView.builder(
      //   itemCount: ref.watch(notePodProvider).removedNotes.length,
      //   itemBuilder: (_, __) {
      //     final note = ref.watch(notePodProvider).removedNotes[__];
      //     return Card(
      //       child: ListTile(
      //         title: note.text(),
      //         subtitle: Row(
      //           children: [
      //             IconButton.filledTonal(
      //               onPressed: () {
      //                 trashManager.undoRemoveNote(note);
      //               },
      //               icon: Icon(Icons.undo_sharp),
      //             ),
      //             IconButton.filled(
      //               onPressed: () {
      //                 trashManager.permanentlyDeleteNote(note);
      //               },
      //               icon: Icon(Icons.delete_forever),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
