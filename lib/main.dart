import 'package:flutter/material.dart';
import 'package:quiz_flutter/answer.dart';
import 'package:quiz_flutter/form.dart';
import 'package:quiz_flutter/question.dart';
import 'package:quiz_flutter/result.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _questionSelected = 0;

  List<Map<String, Object>> questions = [
    {
      'text': 'Qual é sua cor favorita?',
      'answers': [
        {'text': 'Vermelho', 'point': 10},
        {'text': 'Preto', 'point': 1},
        {'text': 'Verde', 'point': 3},
        {'text': 'Azul', 'point': 5},
      ]
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': [
        {'text': 'Gato', 'point': 1},
        {'text': 'Cachorro', 'point': 10},
        {'text': 'Tartaruga', 'point': 5},
        {'text': 'Largatixa', 'point': 3},
      ]
    },
    {
      'text': 'Qual é o sua comida favorita?',
      'answers': [
        {'text': 'Pizza', 'point': 1},
        {'text': 'Lasanha', 'point': 5},
        {'text': 'Cachorro-quente', 'point': 3},
        {'text': 'Hamburguer', 'point': 10},
      ]
    },
    {
      'text': 'Qual é o sua estação do ano favorita?',
      'answers': [
        {'text': 'Outono', 'point': 10},
        {'text': 'Verão', 'point': 5},
        {'text': 'Primavera', 'point': 3},
        {'text': 'Inverno', 'point': 1},
      ]
    },
  ];

  void onAnswer() {
    setState(() {
      _questionSelected++;
    });
    debugPrint('Botão apertado! Pergunta n°: $_questionSelected');
  }

  bool get hasQuestionSelected {
    return _questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: hasQuestionSelected
              ? FormWidget(
                  questionSelected: _questionSelected,
                  onAnswer: onAnswer,
                  questions: questions)
              : Result(),
        ),
      ),
    );
  }
}
