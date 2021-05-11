import 'package:flutter/material.dart';
import 'package:quickquiz/widget/tfButtons.dart';
import 'package:quickquiz/model/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int qIndex = 0;

  int correctAnswer = 0;

  List<Icon> icons = [];

  QuizBrain qBrain = QuizBrain();

  void checkAnswer(answer) {
    setState(() {
      if (qBrain.getAnswer(qIndex) == answer) {
        icons.add(Icon(Icons.check, color: Colors.green));
        ++correctAnswer;
      }

      if (qBrain.getAnswer(qIndex) != answer)
        icons.add(Icon(Icons.close, color: Colors.red));

      ++qIndex;

      if (qIndex == qBrain.qCount()) {
        qIndex = 0;
        icons.clear();

        Alert(
          context: context,
          title: "Quiz Finished",
          content: Column(
            children: [
              Text(
                'Thank you for playing!',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'Correct Answers: $correctAnswer',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              child: Text(
                'Play Again!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ).show();
        correctAnswer = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 24,
              child: Wrap(
                direction: Axis.horizontal,
                children: icons,
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  qBrain.getQuestion(qIndex),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            TFbutton(
              buttonColor: Colors.green,
              buttonLabel: 'True',
              callback: () => checkAnswer(true),
            ),
            TFbutton(
              buttonColor: Colors.red,
              buttonLabel: 'False',
              callback: () => checkAnswer(false),
            ),
          ],
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
