import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  // final String str2;
  // const Screen2(this.str2, {super.key});
  const Screen2({super.key});

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      '/screen1',
      arguments: {
        'id': 10,
        'titel': "info",
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2 Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "",
              style: TextStyle(fontSize: 35),
            ),
            InkWell(
              onTap: () => selectScreen(context),
              child: const Text(
                "Go To Screen 1",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
