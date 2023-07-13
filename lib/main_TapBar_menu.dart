import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/screen1': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void selectScreen(BuildContext ctx, index) {
    Navigator.of(ctx).pushNamed(
      '/screen$index',
      // arguments: {
      //   'id': 10,
      //   'titel': "info",
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Mine Home Page'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.info),
                ),
              ],
            )),
        body: Center(
            child: TabBarView(children: [
          Scaffold(
            appBar: AppBar(title: const Text("Home")),
            body: const Center(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(title: const Text("Info")),
            body: const Center(
              child: Text(
                "Info",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ])),
        drawerScrimColor: Colors.black87,
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                onTap: () => selectScreen(context, 1),
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
                onTap: () => selectScreen(context, 2),
                title: const Text(
                  "Go To Screen 2",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: const Text("Go To Screen 2"),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
