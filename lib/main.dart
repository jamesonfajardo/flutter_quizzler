import 'package:flutter/material.dart';
import 'package:quickquiz/page/quizPage.dart';

void main() => runApp(QuickQuiz());

class QuickQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: QuizPage(),
      ),
    );
  }
}
