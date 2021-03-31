import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onAnswer, {Key? key}) : super(key: key);
  final String text;
  final Function onAnswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onAnswer();
      },
      child: Text(text),
    );
  }
}
