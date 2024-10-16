import '../main.dart';

final notesRM = NotesRM();

class NotesRM {
  Stream<List<Note>> watchNotes() => store
      .box<Note>()
      .query()
      .watch(
        triggerImmediately: true,
      )
      .map(
        (note) => note.find(),
      );
  bool get loading => notesRM.isWaiting;
  late final notesRM = RM.injectStream(
    watchNotes,
  );
  Iterable<Note> call([Note? note]) {
    if (note != null) add(note);
    return notesRM.state;
  }

  void add(Note note) => store.box<Note>().put(note);
  void remove(int id) => store.box<Note>().remove(id);
  void removeAll() => store.box<Note>().removeAll();
}
