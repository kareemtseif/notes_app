import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8, top: 8),
          child: Text(
            'Notes',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
        actions: const [
          CustomSearchButton(),
        ],
      ),
    );
  }
}
