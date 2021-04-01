import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.punctuation, {Key? key}) : super(key: key);

  final int punctuation;

  String get textResult {
    if (punctuation < 10) {
      return 'Parabéns';
    } else if (punctuation < 20) {
      return 'Impressionante';
    } else if (punctuation < 30) {
      return 'Muito bom!';
    } else {
      return 'Nivel Máximo';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textResult, style: TextStyle(fontSize: 28)),
    );
  }
}
