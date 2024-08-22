import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/list_notes/list_notes_screen.dart';

class LoginScreen extends StatelessWidget {
  static const route = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Username"
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed(ListNotesScreen.route);
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
