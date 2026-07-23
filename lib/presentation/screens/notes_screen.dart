import 'package:flutter/material.dart';
import 'package:sanctuary/presentation/views/calendar_view.dart';
import 'package:sanctuary/presentation/views/config_view.dart';
import 'package:sanctuary/presentation/views/notes_view.dart';
import 'package:sanctuary/presentation/views/task_view.dart';
import 'package:sanctuary/presentation/widgeds/notes/add_button_note.dart';
import 'package:sanctuary/presentation/widgeds/app_bar.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final screens = [const NotesView(), const TaskView(), const CalendarView(), const ConfigView()];

    return Scaffold(
      appBar: CustomAppBar(),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const AddNoteButton(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            activeIcon: Icon(Icons.notes_outlined),
            label: 'Notes',
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            activeIcon: Icon(Icons.task_outlined),
            label: 'Tasks',
            backgroundColor: colors.tertiary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            activeIcon: Icon(Icons.calendar_month_outlined),
            label: 'Calendario',
            backgroundColor: colors.tertiary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            activeIcon: Icon(Icons.settings_outlined),
            label: 'Configuración',
            backgroundColor: colors.tertiary,
          ),
        ]
      ),
    );
  }
}
