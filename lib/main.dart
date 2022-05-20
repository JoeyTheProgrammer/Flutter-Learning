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
  final questions = [
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
      'answers': ['skrt', 'myself', 'joey', 'YOOOO'],
    },
  ];

  var _questionIndex = 0;

  //answerQuestionFuction
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('We have more Questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  //the elipses adds the values of a list to a list, so
                  //a list isnt being added to a list
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
