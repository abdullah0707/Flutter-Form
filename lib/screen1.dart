import 'package:flutter/material.dart';
import 'drawer.dart';

class Screen1 extends StatelessWidget {
  // final String str1;

  // const Screen1(this.str1, {super.key});
  const Screen1({super.key});

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/screen2');
  }

  @override
  Widget build(BuildContext context) {
    // final routeArg =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1 Page'),
      ),
      body: Center(
        child: Column(
          children: [
            // Text(
            //   "${routeArg['id']}",
            //   style: const TextStyle(fontSize: 35),
            // ),
            // Text(
            //   "${routeArg['titel']}",
            //   style: const TextStyle(fontSize: 35),
            // ),
            InkWell(
              onTap: () => selectScreen(context),
              child: const Text(
                "Go To Screen 2",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
