import 'package:flutter/material.dart';
import 'package:quiz_flutter/question.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  void responder(int num) {
    debugPrint('Botão $num apertado!');
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
            Text(perguntas[0]),
            Question('Questão 1'),
            ElevatedButton(
              onPressed: () {
                responder(1);
              },
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => responder(2),
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
