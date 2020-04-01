import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function reset;

  Result(this.finalScore, this.reset);

  String get resultPhrase {
    String resultPhrase;

    if (finalScore > 65) {
      resultPhrase = 'You are Awesome';
    } else if (finalScore >= 50 && finalScore < 65) {
      resultPhrase = 'You are innocent';
    } else if (finalScore >= 45 && finalScore < 50) {
      resultPhrase = 'You are a little bit strange';
    } else {
      resultPhrase = 'You are strange';
    }

    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(height:260),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
