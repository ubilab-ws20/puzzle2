import 'package:flutter/material.dart';

import './quiz.dart';
import './quiz1.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'How can a computer understand the numerical?',
      'answers': [
        {'text': 'Hex', 'score': 1},
        {'text': 'Binary', 'score': 10},
      ],
    },
    {
      'questionText': 'Find the Matching Sequence?',
      'answers': [
        {'text': '22A', 'score': 1},
        {'text': '1000101011', 'score': 10},
        {'text': '1010101010', 'score': 1},
        {'text': '22C', 'score': 1},
      ],
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
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scavenger Hunt 2'),
        ),
        body: _questionIndex < 1
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : _questionIndex < _questions.length
                ? Quiz1(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
