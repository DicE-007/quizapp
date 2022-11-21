import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  void _resetFunction() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerFunction(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "questionText": "Whats your fav colour?",
        "answer": [
          {"text": "blue", "score": 100},
          {"text": "black", "score": 50}
        ],
      },
      {
        "questionText": "Whats your fav Animal?",
        "answer": [
          {"text": "Dog", "score": 100},
          {"text": "Cat", "score": 50},
          {"text": "Cow", "score": 50},
        ],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Yayyyyy"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerFunction: _answerFunction,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetFunction),
      ),
    );
  }
}
