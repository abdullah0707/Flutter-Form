import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final Function(int score) answerQuestion;

  const Quiz(this.questions, this.questionIndex, this.answerQuestion,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                () => answerQuestion(int.parse(answer['score'].toString())),
                answer['text'].toString(),
              ),
            )
            .toList(),
      ],
    );
  }
}
