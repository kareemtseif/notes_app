import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'view_notes_state.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());
}
