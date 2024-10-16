import 'package:notes/main.dart';
import 'package:notes/notes/notes_bloc.dart';

class AddNotePage extends UI {
  final noteRM = RM.inject<Note>(() => Note());

  Note note([Note? note]) {
    if (note != null)
      noteRM
        ..state = note
        ..notify();
    return noteRM.state;
  }

  String title([String? title]) {
    if (title != null) note(note()..title = title);
    return note().title;
  }

  String details([String? title]) {
    if (title != null) note(note()..title = title);
    return note().details;
  }

  DateTime dueDate([DateTime? title]) {
    if (title != null) note(note()..dueDate = title);
    return note().dueDate;
  }

  DateTime timeCreated([DateTime? title]) {
    if (title != null) note(note()..timeCreated = title);
    return note().timeCreated;
  }

  String status([String? title]) {
    if (title != null) note(note()..status = title);
    return note().status;
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: 'Add Note'.text(),
        actions: [
          IconButton(
            onPressed: navigator.back,
            icon: Icon(
              Icons.arrow_back,
            ),
          ).pad(),
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: title(),
            onChanged: title,
          ).pad(),
          TextFormField(
            initialValue: details(),
            onChanged: details,
          ).pad(),
          DropdownButtonFormField(
            value: status(),
            items: statuses
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.text(),
                  ),
                )
                .toList(),
            onChanged: status,
          ).pad(),
          ElevatedButton(
            onPressed: () async {
              final _dueDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1950),
                lastDate: DateTime.now().add(Duration(days: 365)),
              );
              if (_dueDate == null) return;
              dueDate(_dueDate);
            },
            child: 'Date Selector'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: title().isEmpty
                ? null
                : () {
                    final note = Note()
                      ..title = title()
                      ..timeCreated = timeCreated()
                      ..dueDate = dueDate()
                      ..status = status()
                      ..details = details();
                    notesRM.add(note);
                    to(NotesPage());
                  },
            child: 'Save Note'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
