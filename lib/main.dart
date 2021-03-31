import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
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
            ElevatedButton(
              onPressed: () => responder(0),
              child: Text('Resposta 1'),
            ),
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
