import 'package:flutter/material.dart';
import 'package:quiz_flutter/answer.dart';
import 'package:quiz_flutter/question.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  void responder() {
    debugPrint('Botão apertado!');
  }

  List<String> perguntas = [
    'Qual é sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Question(perguntas[0]),
            Answer('Answer 1', responder),
            Answer('Answer 2', responder),
            Answer('Answer 3', responder),
            Answer('Answer 4', responder),
          ],
        ),
      ),
    );
  }
}
