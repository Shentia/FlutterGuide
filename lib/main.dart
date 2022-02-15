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
      "answers": ["Black", "blue", "red", "green"]
    },
    {
      "questionText": "what\'s your favorite animal?",
      "answers": ["Tiger", "Lion", "Shark", "horse"]
    },
    {
      "questionText": "who is your favorite movie?",
      "answers": ["Matrix", "Barareh", "Top Gun", "Ice Road"]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
