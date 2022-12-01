import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is my Fav Colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 50},
        {'text': 'Red', 'score': 30}
      ]
    },
    {
      'questionText': 'Whats my fav pet?',
      'answers': [
        {'text': 'Dog', 'score': 50},
        {'text': 'Cat', 'score': 25},
        {'text': 'Fish', 'score': 20},
        {'text': 'Bird', 'score': 20}
      ]
    },
    {
      'questionText': 'What is my Fav City?',
      'answers': [
        {'text': 'Chennai', 'score': 50},
        {'text': 'Torrento', 'score': 30},
        {'text': 'NY', 'score': 40},
        {'text': 'NJ', 'score': 20}
      ]
    },
    {
      'questionText': 'What is my Fav Country?',
      'answers': [
        {'text': 'India', 'score': 50},
        {'text': 'Singapore', 'score': 30},
        {'text': 'Canada', 'score': 50},
        {'text': 'US', 'score': 40}
      ]
    },
  ];
  var questionInd = 0;
  var totalscore = 0;
  void answerQuestion(int score) {
    totalscore += score;
    if (questionInd < questions.length) {
      print('WE Have more questions!');
    } else {
      print('No more questions');
    }
    setState(() {
      questionInd = questionInd + 1;
      print(questionInd);
    });

    print(questionInd);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionInd < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionInd: questionInd,
              )
            : Result(totalscore),
      ),
    );
  }
}
