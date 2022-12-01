import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final resetHandler;
  Result(this.score, this.resetHandler);

  String get resultPhrase {
    var resText = 'You did it!';
    if (score <= 50) {
      resText = 'You Scored Low Next time';
    } else if (score <= 100) {
      resText = 'You are So Good at these quiz';
    } else {
      resText = 'You are a self motivator';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetHandler, child: Text('Restart Quiz!'))
      ],
    ));
  }
}
