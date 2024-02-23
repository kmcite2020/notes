import 'package:extensions/extensions.dart';

import '../../../main.dart';
import 'note_page.dart';

class NotesPage extends UI {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: 'Notes'.text(),
          // toolbarHeight: 80,
          actions: [
            IconButton(
              onPressed: () => RM.toPage(SettingsPage()),
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                // ref.watch(notePodProvider.notifier).addNote(
                //       (newNote) => newNote,
                //     );
              },
              icon: const Icon(Icons.add_box_sharp),
            ).pad(
              custom: const EdgeInsets.only(right: 8),
            ),
          ]

          // title: SearchBar(
          //   onChanged: ref.watch(notePodProvider.notifier).setQuery,
          //   hintText: 'Search by Note\'s title.',
          // ),
          ),
      body: RefreshIndicator(
        onRefresh: () async => notesRM.getNotes(),
        child: notesRM().loading
            ? CircularProgressIndicator().center()
            : switch (settingsRM().notesViewMode) {
                NotesViewMode.list => ListView.builder(
                    itemCount: notesRM().cache.length,
                    itemBuilder: (context, index) {
                      final note = notesRM().cache[index];
                      return ListTile(
                        title: note.text(),
                        onTap: () => RM.toPage(
                          NotePage(
                            id: note.id,
                          ),
                        ),
                      );
                    },
                  ),
                NotesViewMode.grid => GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: notesRM().cache.length,
                    itemBuilder: (context, index) {
                      final note = notesRM().cache[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(settingsRM().borderRadius),
                          border: Border.all(),
                        ),
                        child: ListTile(
                          title: note.title.text(),
                          subtitle: note.description.text(),
                          onTap: () => RM.toPage(
                            NotePage(id: note.id),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              settingsRM().borderRadius,
                            ),
                          ),
                        ),
                      ).pad();
                    },
                  ),
              },
      ),
    );
  }
}
