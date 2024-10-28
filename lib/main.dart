import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff54EED5),
          foregroundColor: Colors.black,
        ),
        useMaterial3: true,
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff303030),
          scrolledUnderElevation: 0,
        ),
        scaffoldBackgroundColor: const Color(0xff303030),
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}
