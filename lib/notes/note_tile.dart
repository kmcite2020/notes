// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:notes/main.dart';

class NoteTile extends UI {
  const NoteTile({super.key, required this.note});
  final Note Function([Note? _]) note;
  @override
  Widget build(context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(),
          note().title.text(textScaleFactor: 2).pad(),
          note().details.text(textScaleFactor: 1).pad(),
          ElevatedButton(
            onPressed: () => to(NoteDetailsPage(note: note)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Switch(
                  value: switch (note().status) {
                    'Complete' => false,
                    _ => true,
                  },
                  onChanged: (value) {
                    note(
                      note()
                        ..status = switch (value) {
                          false => 'Complete',
                          true => 'Incomplete',
                        },
                    );
                  },
                ).pad(),
                'Go to Details'.text().pad(),
              ],
            ),
          ).pad(),
          note().timeCreated.text().pad(),
        ],
      ).pad(),
    ).pad();
  }
}

class NoteDetailsPage extends UI {
  final Note Function([Note? _]) note;
  NoteDetailsPage({
    super.key,
    required this.note,
  });
  @override
  Widget build(BuildContext context) {
    String title([title]) {
      if (title != null) note(note()..title = title);
      return note().title;
    }

    String details([details]) {
      if (details != null) note(note()..details = details);
      return note().details;
    }

    String status([noteStatus]) {
      if (noteStatus != null) note(note()..status = noteStatus);
      return note().status;
    }

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: 'note_details'.text(),
        actions: [
          IconButton(
            onPressed: navigator.back,
            icon: Icon(Icons.arrow_back),
          ).pad()
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            initialValue: title(),
            onChanged: title,
            decoration: InputDecoration(labelText: 'title'),
            minLines: 2,
            maxLines: 8,
          ).pad(),
          TextFormField(
            initialValue: details(),
            onChanged: details,
            decoration: InputDecoration(labelText: 'details'),
            minLines: 4,
            maxLines: 10,
          ).pad(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'status:'.text().pad(),
              IconButton(
                onPressed: () {
                  status(switch (status()) {
                    'Complete' => 'Incomplete',
                    _ => 'Complete',
                  });
                },
                icon: Icon(
                  switch (status()) {
                    'Complete' => Icons.done,
                    _ => Icons.pending,
                  },
                ),
              ).pad(),
            ],
          ),
          'created_on:'.text().pad(),
          note().timeCreated.text().pad(),
          'due_date:'.text().pad(),
          note().dueDate.text().pad(),
        ],
      ),
    );
  }
}
