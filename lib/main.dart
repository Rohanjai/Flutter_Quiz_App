import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionInd = 0;

  void answerQuestion() {
    setState(() {
      questionInd = questionInd + 1;
    });

    print(questionInd);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is my Fav Food?',
        'answers': ['Black', 'Green', 'Blue']
      },
      {
        'questionText': 'Whats my fav pet?',
        'answers': ['Dog', 'Cat', 'Fish']
      },
      {
        'questionText': 'What is my Fav City?',
        'answers': ['Chennai', 'Torrento', 'NY']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[questionInd]['questionText'] as String,
            ),
            ...(questions[questionInd]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
