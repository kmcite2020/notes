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
    final note = notes.cache[noteID];
    if (note == '') return 'Invalid ID'.text();
    return builder(note!);
  }
}

final Notes notes = Notes();
