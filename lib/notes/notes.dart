// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_element
import 'package:notes/main.dart';

const statuses = [
  'Complete',
  'Incomplete',
];

@Entity()
class Note {
  @Id()
  int id;
  String title;
  String details;
  String status;
  DateTime dueDate;
  DateTime timeCreated;
  Note._({
    this.id = 0,
    this.title = '',
    this.details = '',
    this.status = 'Complete',
    required this.dueDate,
    required this.timeCreated,
  });
  factory Note() {
    return Note._(
      dueDate: DateTime.now(),
      timeCreated: DateTime.now(),
    );
  }
}
