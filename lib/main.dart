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
            ? Column(
                children: <Widget>[
                  Question(
                    questions[questionInd]['questionText'] as String,
                  ),
                  ...(questions[questionInd]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(child: Text('You did it!')),
      ),
    );
  }
}
