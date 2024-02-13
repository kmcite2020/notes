import '../../../main.dart';

class NoteBuilder extends UI {
  const NoteBuilder({
    required this.noteID,
    required this.builder,
  });

  final String noteID;
  final Widget Function(Note note) builder;

  @override
  Widget build(BuildContext context) {
    
    final notes = ref.watch(notePodProvider);

    final note = notes.cache[noteID];
    if (note == '') return 'Invalid ID'.text();
    return builder(note!);
  }
}
