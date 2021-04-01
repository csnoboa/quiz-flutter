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
  int _perguntaSelecionada = 0;

  List<Map<String, Object>> perguntas = [
    {
      'text': 'Qual é sua cor favorita?',
      'respostas': ['Vermelho', 'Preto', 'Verde', 'Azul']
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'respostas': ['Gato', 'Cachorro', 'Tartaruga', 'Largatixa']
    },
    {
      'text': 'Qual é o sua comida favorita?',
      'respostas': ['Pizza', 'Lasanha', 'Cachorro-quente', 'Hamburguer']
    },
    {
      'text': 'Qual é o sua estação do ano favorita?',
      'respostas': ['Outono', 'Verão', 'Primavera', 'Inverno']
    },
  ];

  void responder() {
    setState(() {
      _perguntaSelecionada++;
      if (_perguntaSelecionada == perguntas.length) {
        _perguntaSelecionada = 0;
      }
    });
    debugPrint('Botão apertado! Pergunta n°: $_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    List<String>? respostas =
        perguntas[_perguntaSelecionada]['respostas'] as List<String>;

    List<Answer> respostasWidget =
        respostas.map((text) => Answer(text, responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Question(perguntas[_perguntaSelecionada]['text'].toString()),
              ...respostasWidget
            ],
          ),
        ),
      ),
    );
  }
}
