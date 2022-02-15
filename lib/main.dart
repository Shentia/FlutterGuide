import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      "questionText": "what\'s your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "blue", "score": 20},
        {"text": "red", "score": 40},
        {"text": "green", "score": 80},
      ]
    },
    {
      "questionText": "what\'s your favorite animal?",
      "answers": [
        {"text": "Tiger", "score": 10},
        {"text": "Lion", "score": 8},
        {"text": "Shark", "score": 6},
        {"text": "horse", "score": 4},
      ]
    },
    {
      "questionText": "who is your favorite movie?",
      "answers": [
        {"text": "Matrix", "score": 20},
        {"text": "Barareh", "score": 19},
        {"text": "Top Gun", "score": 13},
        {"text": "Ice Road", "score": 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more questions!");
    } else {
      print("No more Questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Save Credit'),
          backgroundColor: Color.fromARGB(231, 1, 122, 82),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
