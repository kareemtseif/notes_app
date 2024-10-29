import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'view_notes_state.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());
  List<NoteModel>? notes;
  viewNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
