import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetFunction;
  Result(this.totalScore, this.resetFunction);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "You did it",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "Your score is " + totalScore.toString(),
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(height: 30),
          Text("Click here to reset the quiz"),
          SizedBox(height: 15),
          FloatingActionButton(
            onPressed: resetFunction,
            tooltip: "Reset Quiz",
            backgroundColor: Colors.blue,
            child: Icon(Icons.navigation),
          )
        ],
      ),
    );
  }
}
