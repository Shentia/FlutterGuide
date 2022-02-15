import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it!',
        style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 5, 102, 65)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
