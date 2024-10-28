import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const EditNoteView();
                  },
                ),
              );
            },
            child: ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Build your carrer with Tharwat Samy',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff946D30),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              'May 21,2022',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff946D30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
