import 'package:notes/main.dart';

import '../pages/note_page.dart';

class NoteItem extends UI {
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
      child: GestureDetector(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  note.title.text(scale: 1.2).pad(),
                  note.description.text(scale: 0.8).pad(),
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
