class Note {
  final String title;
  final String content;
  final DateTime? date;
  final String? imageUrl;

  Note({
    required this.title,
    required this.content,
    this.date,
    this.imageUrl,
  });
}
