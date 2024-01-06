import 'package:notes/features/notes/components/note_builder.dart';
import 'package:notes/main.dart';

class NotePage extends UI {
  const NotePage({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return NoteBuilder(
      noteID: id,
      builder: (Note note) {
        return Scaffold(
          appBar: AppBar(
            title: note.title.text(),
            actions: [
              IconButton(
                onPressed: () {
                  navigator.toDialog(
                    Dialog(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(height: 0),
                          'ID'.text(),
                          note.noteID.text(scale: .8),
                          Divider(height: 0),
                          'TITLE'.text(),
                          note.title.text(),
                          Divider(height: 0),
                          'CREATED ON'.text(),
                          note.created.text(),
                          Divider(height: 0),
                          'IS ARCHIVED'.text(),
                          note.isArchived.text(),
                          Divider(height: 0),
                          'IS DELETED'.text(),
                          note.isDeleted.text(),
                          Divider(height: 0),
                        ],
                      ).pad().pad(),
                    ),
                  );
                },
                icon: Icon(Icons.info),
              ),
              IconButton(
                onPressed: () {
                  notesManager.addNote(
                    (_) => note.copyWith(editing: !note.editing),
                  );
                },
                icon: Icon(note.editing ? Icons.done : Icons.edit),
              ).pad(
                padding: EdgeInsets.only(
                  right: settingsManager.settings.padding,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              note.editing
                  ? TextFormField(
                      initialValue: note.title,
                      onChanged: (value) {
                        notesManager.addNote(
                          (_) => note.copyWith(title: value),
                        );
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ).pad()
                  : note.title.text().pad().center(),
              note.editing
                  ? TextFormField(
                      initialValue: note.description,
                      onChanged: (value) {
                        notesManager.addNote(
                          (_) => note.copyWith(description: value),
                        );
                      },
                      minLines: 10,
                      maxLines: 20,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ).pad()
                  : note.description.text().pad().center(),
            ],
          ).pad(),
        );
      },
    );
  }
}
