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
      'questionText': 'What is my Fav Food?',
      'answers': ['Black', 'Green', 'Blue', 'Red']
    },
    {
      'questionText': 'Whats my fav pet?',
      'answers': ['Dog', 'Cat', 'Fish', 'Bird']
    },
    {
      'questionText': 'What is my Fav City?',
      'answers': ['Chennai', 'Torrento', 'NY', 'NJ']
    },
    {
      'questionText': 'What is my Fav Country?',
      'answers': ['India', 'Singapore', 'Canada', 'US']
    },
  ];
  var questionInd = 0;

  void answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
