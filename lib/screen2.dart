import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return const Screen1();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2 Page'),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: const Text(
            "Go To Screen 1",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
    );
  }
}
