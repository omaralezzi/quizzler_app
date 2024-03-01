// quiz_page.dart

import 'package:flutter/material.dart';
import 'questionBank.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = questionBank;

  List<Icon> checkResult = [];
  int score = 0;

  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              currentQuestionIndex < questions.length
                  ? questions[currentQuestionIndex].statement
                  : 'Quiz Completed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        currentQuestionIndex < questions.length
            ? Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () => checkAnswer(true),
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () => checkAnswer(false),
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: ElevatedButton(
                  onPressed: resetQuiz,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Your Score: $score',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Play Again',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...checkResult,
              Text(
                'Your Score: $score',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void checkAnswer(bool userAnswer) {
    bool correct = questions[currentQuestionIndex].answer;
    if (correct) {
      setState(() {
        score++;
      });
    }

    setState(() {
      checkResult.add(
        Icon(
          correct ? Icons.check : Icons.clear,
          color: correct ? Colors.green : Colors.red,
          size: 30.0,
        ),
      );
    });

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        currentQuestionIndex = questions.length;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      checkResult.clear();
      score = 0;
    });
  }
}
