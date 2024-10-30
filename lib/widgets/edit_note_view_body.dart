import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        onPressed: () {
          widget.note.title = title ?? widget.note.title;
          widget.note.subtitle = subTitle ?? widget.note.subtitle;
          widget.note.save();
          BlocProvider.of<ViewNotesCubit>(context).viewNotes();
          Navigator.of(context).pop();
        },
        icon: Icons.done,
        title: 'Edit Note',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                maxLines: 1,
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.note.title,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onChanged: (value) {
                  subTitle = value;
                },
                hintText: widget.note.subtitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
