import 'package:flutter/material.dart';
import 'package:sanctuary/presentation/widgeds/search_note.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchNote(),
          // Add other widgets here
        ],
      ),
    );
  }
}
