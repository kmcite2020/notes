import 'package:notes/main.dart';
import 'package:notes/store/settings/settings.page.dart';

import '../../extenions.dart';
import '../navigation/navigation.action.dart';
import 'add_note_page.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: 'NOTES'.text(),
        actions: [
          IconButton(
            onPressed: () {
              // navigator.toDialog(
              //   BottomSheet(
              //     showDragHandle: true,
              //     onDragStart: (details) {
              //       log(details.toString());
              //     },
              //     onClosing: () {},
              //     builder: (context) => Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         FilledButton(
              //           onPressed: () {
              //             navigator.back();
              //             navigator.to(SettingsPage());
              //           },
              //           child: 'Settings'.text(),
              //         ).pad(),
              //       ],
              //     ),
              //   ),
              // );
              Navigation(SettingsPage());
            },
            icon: Icon(Icons.menu),
          ).pad(),
        ],
      ),
      // body: NotesListUI(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigation(AddNotePage()),
        isExtended: true,
        child: Icon(Icons.add),
      ),
    );
  }
}

// class NotesListUI extends UI {
//   NotesListUI({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: notesRM().length,
//       itemBuilder: (context, index) =>
//           NoteTile(note: notesRM().values.elementAt(index)),
//     );
//   }
// }
