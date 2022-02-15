import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 20) {
      resultText = "You are awesome!";
    } else if (resultScore < 10) {
      resultText = "You are So Bad guy";
    } else if (resultScore > 21) {
      resultText = "You are the best friend";
    } else {
      resultText = "BAD";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 5, 102, 65)),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text('Restart Quiz!'),
              onPressed: resetHandler,
              textColor: Colors.white,
              color: Color.fromARGB(255, 5, 109, 57)),
        ],
      ),
    );
  }
}
