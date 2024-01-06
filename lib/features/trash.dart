import '../main.dart';

class TrashPage extends ReactiveStatelessWidget {
  const TrashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          title: Text('Trash'),
        ),
        SliverList.builder(
          itemCount: trashManager.trashedNotes.length,
          itemBuilder: (_, __) {
            final note = trashManager.trashedNotes[__];
            return Card(
              child: ListTile(
                title: note.title.text(),
                subtitle: note.description.text(),
                trailing: IconButton(
                  onPressed: () => trashManager.undoDeleteNote(note),
                  icon: Icon(Icons.undo_sharp),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

final trashManager = TrashManager();

class TrashManager {
  final trashedNotesRM = RM.inject(
    () => <Note>[],
    initialState: <Note>[],
  );
  List<Note> get trashedNotes => trashedNotesRM.state;

  void permanentlyDeleteNote(Note note) {}
  void undoDeleteNote(Note note) {}
}
