import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() resetQuiz;
  final int resultScore;
  get resultPhrase {
    if (resultScore == 40) {
      return 'Good : You are awesome 😀';
    } else if (resultScore > 10) {
      return 'Not Bad : try again 😉';
    } else {
      return 'You so Bad : try again 😢';
    }
  }

  const Result(this.resetQuiz, this.resultScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Score : $resultScore',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            // style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            child: const Icon(
              Icons.replay_sharp,
              size: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
