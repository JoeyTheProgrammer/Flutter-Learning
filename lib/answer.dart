import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //VoidCallback selectHandler;
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Text('Answer 1'),
          style: ElevatedButton.styleFrom(
            primary: Colors.amber, //button color
            onPrimary: Colors.white, //text
          )),
    );
  }
}
