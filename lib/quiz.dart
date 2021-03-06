import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    this.questions,
    this.answerQuestion,
    this.questionIndex,
});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget> [
      Question(questions[questionIndex]['question']),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ],
    );
  }
}