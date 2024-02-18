import '../../main.dart';

final notesRepository = NotesRepository();

class NotesRepository {
  static const databaseId = '65bf16ef54994dc50176';
  static const collectionId = '65bf16f8e10c8eaba75a';

  Future<List<Note>> getAllNotes() {
    return databases.listDocuments(
      databaseId: databaseId,
      collectionId: collectionId,
      queries: [
        Query.limit(9999),
      ],
    ).then(
      (documentList) {
        return documentList.documents.map(
          (eachDocument) {
            return Note.fromJson(eachDocument.data);
          },
        ).toList();
      },
    );
  }

  Future<Note> addNote(Note note) {
    return databases
        .createDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: note.id,
      data: note.toJson(),
    )
        .then(
      (eachDocument) {
        return Note.fromJson(eachDocument.data);
      },
    ).catchError(
      (e) {
        throw e;
      },
    );
  }

  Future removeNote(Note note) {
    return databases.deleteDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: note.id,
    );
  }

  Future updateNote(Note note) {
    return databases.updateDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: note.id,
      data: note.toJson(),
    );
  }
}
