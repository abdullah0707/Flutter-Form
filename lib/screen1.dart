import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return const Screen2();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1 Page'),
      ),
      body: Center(
        child: InkWell(
          onTap: () => selectScreen(context),
          child: const Text(
            "Go To Screen 2",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
    );
  }
}
