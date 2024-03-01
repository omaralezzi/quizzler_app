// main.dart

import 'package:flutter/material.dart';
import 'quiz_page.dart'; // Import the QuizPage widget

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(), // Use the QuizPage widget
            ),
          ),
        ),
      ),
    );
  }
}
