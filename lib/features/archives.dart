import 'package:notes/main.dart';

class ArchivesPage extends UI {
  const ArchivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
        actions: [],
        toolbarHeight: 80,
      ),
      // body: ListView.builder(
      //   itemCount: notesManager.archivedNotes.length,
      //   itemBuilder: (context, index) =>
      //       notesManager.archivedNotes[index].text(),
      // ),
    );
  }
}
