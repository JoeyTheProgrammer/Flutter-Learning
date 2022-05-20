import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

//this is rebuilt
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//data is not reset here
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  //answerQuestionFuction
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      //map-> key=>value pair
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite person?',
        'answers': ['Perla', 'Perla', 'Perla', 'Definately Perla'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
