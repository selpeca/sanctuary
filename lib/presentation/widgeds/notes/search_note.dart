import 'package:flutter/material.dart';

class SearchNote extends StatefulWidget {
  const SearchNote({super.key});

  @override
  State<SearchNote> createState() => _SearchNoteState();
}

class _SearchNoteState extends State<SearchNote> {
  // 1. Define the controller to manage and retrieve data
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    // 2. Always dispose the controller when the widget is destroyed
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: TextField(
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide.none,
              ),
              hintText: 'Busca tus notas',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Color.fromARGB(40, 200, 201, 201),
            ),
          ),
        ),
      ],
    );
  }
}
