import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.answer, {Key? key}) : super(key: key);
  final String text;
  final Function answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        answer();
      },
      child: Text(text),
    );
  }
}
