import 'package:flutter/material.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({super.key});

  @override
  State<StatefulWidget> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  var colorPrimaryAppBar = Colors.black54;
  var colorPrimaryBody = Colors.white70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimaryAppBar,
      ),
      body: const Text('Hello Abdullah !'),
      backgroundColor: colorPrimaryBody,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (colorPrimaryAppBar == Colors.black54 &&
              colorPrimaryBody == Colors.white70) {
            setState(() {
              colorPrimaryAppBar = Colors.amber;
              colorPrimaryBody = Colors.white;
            });
          } else {
            setState(() {
              colorPrimaryAppBar = Colors.black54;
              colorPrimaryBody = Colors.white70;
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
