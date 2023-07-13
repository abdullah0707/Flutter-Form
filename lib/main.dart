import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'sign.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences _prefs = await SharedPreferences.getInstance();
  var email = _prefs.getString("email");
  var password = _prefs.getString("password");

  runApp(email != null && password != null ? const MyApp() : const Sing());
}

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: const Center(
        child: Text("Home page"),
      ),
    );
  }
}
