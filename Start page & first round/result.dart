import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'Sorry you lost';
    } else if (resultScore <= 11) {
      resultText = 'You can make it';
    } else if (resultScore <= 20) {
      resultText = 'Well Done.. Going Good';
    } else {
      resultText = 'Sorry you lost';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
