import 'package:flutter/material.dart';
import 'package:sanctuary/presentation/models/note.dart';
import 'package:sanctuary/presentation/widgeds/notes/card_note.dart';
import 'package:sanctuary/presentation/widgeds/notes/search_note.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});
  
  @override
  Widget build(BuildContext context) {
    final List<Note> notes = [
      Note(
        title: 'Note 1',
        content: 'Content for note 1',
        date: DateTime(2026, 10, 23),
        imageUrl: 'https://picsum.photos/200',
      ),
      Note(
        title: 'Note 2',
        content: 'Content for note 2',
        date: DateTime(2026, 10, 22),
      ),
    ];
    return Scaffold(
      body: Column(
        children: [
          const SearchNote(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Recent Notes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Badge(
                      label: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('All'),
                      ),
                      backgroundColor: Color(0xFFDBE1FF),
                      textColor: Color(0xFF3B4CCA),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Badge(
                      label: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('Personal'),
                      ),
                      backgroundColor: Color(0xFFDBE1FF),
                      textColor: Color(0xFF434655),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return NoteCard(
                  title: note.title,
                  content: note.content,
                  date: note.date,
                  imageUrl: note.imageUrl,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
