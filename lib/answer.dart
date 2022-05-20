import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //VoidCallback selectHandler;
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
          style: ElevatedButton.styleFrom(
            primary: Colors.amber, //button color
            onPrimary: Colors.white, //text
          )),
    );
  }
}
