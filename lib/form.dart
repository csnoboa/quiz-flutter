import 'package:flutter/material.dart';
import 'package:quiz_flutter/answer.dart';
import 'package:quiz_flutter/question.dart';

class FormWidget extends StatelessWidget {
  const FormWidget(
      {required this.questionSelected,
      required this.onAnswer,
      required this.questions});

  final questions;
  final int questionSelected;
  final void Function(int) onAnswer;

  bool get hasQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? answers = hasQuestionSelected
        ? questions[questionSelected]['answers'] as List<Map<String, Object>>
        : [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(questions[questionSelected]['text'].toString()),
        ...answers
            .map((answer) => Answer(answer['text'] as String,
                () => onAnswer(answer['point'] as int)))
            .toList(),
      ],
    );
  }
}
