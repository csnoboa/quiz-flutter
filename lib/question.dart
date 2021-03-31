import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}
