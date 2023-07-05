import 'package:flutter/material.dart';
// import 'screen1.dart';
// import 'screen2.dart';
// import 'main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void selectScreenPage(ctx, index) {
    Navigator.of(ctx).pushNamed(
      index >= 1 ? '/screen$index' : '/',
      // '/screen$index',
      // arguments: {
      //   'id': 10,
      //   'titel': "info",
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () => selectScreenPage(context, 0),
            title: const Text(
              "Go To Home Screen",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: const Text(
              "Go To Home Screen",
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => selectScreenPage(context, 1),
            title: const Text(
              "Go To Screen 1",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: const Text(
              "Go To Screen 1",
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => selectScreenPage(context, 2),
            title: const Text(
              "Go To Screen 2",
              style: TextStyle(fontSize: 25),
            ),
            subtitle: const Text("Go To Screen 2"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
