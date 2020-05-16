import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;
  // positional arg
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
