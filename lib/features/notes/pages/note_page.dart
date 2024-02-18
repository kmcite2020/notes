import '../../../main.dart';

class NotePage extends UI {
  const NotePage({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return NoteBuilder(
      id: id,
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
                          note.id.text(textScaleFactor: .8),
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
                          note.isRemoved.text(),
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
                  // ref.watch(notePodProvider.notifier).addNote(
                  //   (_) {
                  //     return note.copyWith(editing: !note.editing);
                  //   },
                  // );
                },
                icon: Icon(note.editing ? Icons.flutter_dash : Icons.edit),
              ).pad(
                custom: EdgeInsets.only(
                  right: settingsRM().padding,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              note.editing
                  ? TextField(
                      // initialValue: note.title,
                      onChanged: (value) {
                        // ref.watch(notePodProvider.notifier).addNote(
                        //       (_) => note.copyWith(title: value),
                        //     );
                      },
                      // decoration: InputDecoration(
                      //   border: OutlineInputBorder(borderSide: BorderSide.none),
                      // ),
                    ).pad()
                  : note.title.text().pad().center(),
              note.editing
                  ? TextField(
                      // initialValue: note.description,
                      onChanged: (value) {
                        // ref.watch(notePodProvider.notifier).addNote(
                        //       (_) => note.copyWith(description: value),
                        //     );
                      },
                      minLines: 10,
                      maxLines: 20,
                      // decoration: InputDecoration(
                      //   border: OutlineInputBorder(borderSide: BorderSide.none),
                      // ),
                    ).pad()
                  : note.description.text().pad().center(),
            ],
          ).pad(),
        );
      },
    );
  }
}

class NoteBuilder extends UI {
  final String id;
  final Widget Function(Note note) builder;

  NoteBuilder({
    super.key,
    required this.id,
    required this.builder,
  });
  @override
  Widget build(BuildContext context) {
    final note = notesRM().cache.firstWhere((element) => element.id == id);
    return builder(note);
  }
}
