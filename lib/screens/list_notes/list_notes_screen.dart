import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/detail_note/detail_note_screen.dart';
import 'package:flutter_todo/screens/edit_note/edit_note_screen.dart';

class ListNotesScreen extends StatelessWidget {
  static const route = "ListNotesScreen";

  @override
  Widget build(BuildContext context) {
    return Page();
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    print('===$width');
    int pageCount = 0;
    if (width < 600) {
      pageCount = 1;
    } else if (width < 900) {
      pageCount = 2;
    } else {
      pageCount = 3;
    }
    return Scaffold(
        body: switch (pageCount) {
      == 1 => ListNotesPage(),
          == 2 => ListNotesWithDetailPage(),
          == 3 => ListNotesDetailEditPage(),
      _ => ListNotesPage()
    });
  }
}

class ListNotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("List Note"),
    );
  }
}

class ListNotesWithDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ListNotesPage(),
          DetailNoteScreen()
        ],
      ),
    );
  }
}


class ListNotesDetailEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ListNotesPage(),
          DetailNoteScreen(),
          EditNoteScreen(),
        ],
      ),
    );
  }
}
