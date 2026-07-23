import 'package:sanctuary/presentation/models/task.dart';

class Note {
  final String title;
  final String? content;
  final DateTime? date;
  final String? imageUrl;
  final List<Task>? tasks;

  Note({
    required this.title,
    this.content,
    this.date,
    this.imageUrl,
    this.tasks,
  });
}
