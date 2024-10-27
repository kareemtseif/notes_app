import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_button.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text('Notes', style: TextStyle(fontSize: 28)),
        ),
        actions: const [CustomSearchButton()],
      ),
      body: const NotesListView(),
    );
  }
}
