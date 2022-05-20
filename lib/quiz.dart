import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final int? questionIndex;
  final VoidCallback? answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions![questionIndex!]['questionText'] as String,
        ),
        //the elipses adds the values of a list to a list, so
        //a list isnt being added to a list
        ...(questions![questionIndex!]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion!, answer);
        }).toList()
      ],
    );
  }
}
