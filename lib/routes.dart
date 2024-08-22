import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/detail_note/detail_note_screen.dart';
import 'package:flutter_todo/screens/edit_note/edit_note_screen.dart';
import 'package:flutter_todo/screens/list_notes/list_notes_screen.dart';
import 'package:flutter_todo/screens/login/login_screen.dart';

Route<dynamic>? mainRoute(RouteSettings settings) {
  switch(settings.name) {
    case LoginScreen.route:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case ListNotesScreen.route:
      return MaterialPageRoute(builder: (context) => ListNotesScreen());
    case EditNoteScreen.route:
      return MaterialPageRoute(builder: (context) => EditNoteScreen());
    case DetailNoteScreen.route:
      return MaterialPageRoute(builder: (context) => DetailNoteScreen());
    default:
      return MaterialPageRoute(builder: (context) => LoginScreen());
  }
}