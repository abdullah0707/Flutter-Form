import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String AnswerText;

  final Function() callBack;
  const Answer(this.callBack, this.AnswerText, {super.key});

  // get score => 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callBack,
        child: Text(
          AnswerText,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  setState(Function() param0) {}
}
