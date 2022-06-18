import 'package:flutter/material.dart';

import './answer.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final String answer;

  Result(this.resetQuiz, this.answer);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child:Column (
      children: [
        Center(
          child: Text('The Quiz is Over!!'),
        ),
        Answer(resetQuiz, answer)
      ],
    ),
   );
  }
}

