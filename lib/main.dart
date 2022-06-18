import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State <MyApp> {
  static const _questions = [
    {
      'question':'How are you?',
      'answers':[
        'I\'m not fine!',
        'I\'m doing well!',
        'I\'m as usual!'
      ]
    },
    {
      'question':'How old are you?',
      'answers':[
        'I\'m below 18!',
        'I\'m above 18!',
        'I\'m eighteen!'
      ]
    },
    {
      'question':'Where do you live?',
      'answers':[
        'I live in Kigali',
        'I live in WEST',
        'I live in EAST',
        'I live in NORTH',
        'I live in SOUTH',
      ]
    },
    {
      'question':'What\'s your favorite color',
      'answers':[
        'I like Green!',
        'I like Blue!',
        'I like Black',
        'I like Red',
        'I like Indigo'
      ]
    },
    {
      'question':'What makes you happy?',
      'answers':[
        'Eating!',
        'Playing',
        'Partying',
        'Praying',
        'Swimming'
      ]
    },
    {
      'question':'How much money do you have on you?',
      'answers':[
        'Above hundred bucks',
        'Below hundred bucks',
        'Hundred bucks',
      ]
    },

  ];

  var _questionIndex = 0;
  void _resetQuiz () => {
    setState(() {
      _questionIndex = 0;
    })
  };
  void _answerQuestion () => {
    setState(() {
    _questionIndex = _questionIndex + 1;
    }),
    print('Answered!'),
    print(_questionIndex)
  };
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Quiz app'),
        ),
        body: _questionIndex < _questions.length ?
        Quiz(questions: _questions, answerQuestion: _answerQuestion, questionIndex: _questionIndex,)
            : Result(_resetQuiz, 'Restart the QUIZ!'),
        ),
    );
  }
}
