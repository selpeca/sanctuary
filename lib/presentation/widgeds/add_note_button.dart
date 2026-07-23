import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Action to add a new note
      },
      backgroundColor: Color(0XFF6200EE),
      shape: CircleBorder(),
      
      child: const Icon(Icons.add, color: Colors.white, size: 32),
      
    );
  }
}
