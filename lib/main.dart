import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void selectScreen(BuildContext ctx, index) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          if (index == 1) return const Screen1();
          return const Screen2();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mine Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => selectScreen(context, 1),
              child: const Text(
                "Go To Screen 1",
                style: TextStyle(fontSize: 35),
              ),
            ),
            InkWell(
              onTap: () => selectScreen(context, 2),
              child: const Text(
                "Go To Screen 2",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
