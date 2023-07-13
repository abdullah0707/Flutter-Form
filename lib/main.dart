import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'another.dart';

void main(List<String> args) => runApp(const MyApp());

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const Another())),
              child: const Text('Go To Another Screen'),
            )
          ],
        ),
      ),
    );
  }

  setData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setString("name", "Abdullah");
    _pref.setInt("age", 30);
    _pref.setDouble("height", 179.5);
    _pref.setBool("developer", true);
    _pref.setStringList("skills", ["Dart", "Flutter"]);
  }
}
