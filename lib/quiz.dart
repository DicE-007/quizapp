import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerFunction;
  Quiz(
      {required this.questions,
      required this.answerFunction,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"] as String,
        ),
        // ElevatedButton(
        //     onPressed: answerFunction, child: Text("Answer 1")),
        // ElevatedButton(
        //     onPressed: (() => print("Answer2 is chosen")),
        //     child: Text("Answer 2")),
        // ElevatedButton(
        //     onPressed: (() {
        //       print("Answer 3 is chosen");
        //     }),
        //     child: Text("Answer 3")),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) => Answer(() => answerFunction(answer["score"]),
                answer["text"] as String))
            .toList()
      ],
    );
  }
}
