import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = <Map<String, Object>>[
    {
      'questionText': 'What\'s your Favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 10}, 
        {'text': 'Green', 'score': 0},
        {'text': 'Blue', 'score': 0},
        {'text': 'Yellow', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your Favorite Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Lion', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your Favorite Car?',
      'answers': [
        {'text': 'BMW', 'score': 0},
        {'text': 'VOLVO', 'score': 10},
        {'text': 'LEXUS', 'score': 0},
        {'text': 'HONDA', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your Favorite City?',
      'answers': [
        {'text': 'Cairo', 'score': 0},
        {'text': 'Nasr City', 'score': 10},
        {'text': 'Sohag', 'score': 0},
        {'text': 'Alex', 'score': 0},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  var themeModeSystem = ThemeMode.system;
  var iconMode = Icons.light_mode;
  var iconColor = Colors.amber;
  var textColorBtn = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(primarySwatch: Colors.cyan),
      themeMode: themeModeSystem,
      home: Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              size: 40,
            ),
            title: const Text('Hello Abdullah'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () => setState(() {
                  themeModeSystem = themeModeSystem == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                  iconMode = iconMode == Icons.light_mode
                      ? Icons.dark_mode
                      : Icons.light_mode;
                  iconColor = iconColor == Colors.blueGrey
                      ? Colors.amber
                      : Colors.blueGrey;
                  textColorBtn = textColorBtn == Colors.black
                      ? Colors.white
                      : Colors.black;
                }),
                icon: Icon(iconMode),
                color: iconColor,
              ),
            ]),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
      ),
    );
  }
}
