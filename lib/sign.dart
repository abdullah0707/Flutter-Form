import 'package:flutter/material.dart';
import 'main_test_sing_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sing extends StatefulWidget {
  const Sing({super.key});

  @override
  State<StatefulWidget> createState() => _SingState();
}

class _SingState extends State<Sing> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sing Up"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(hintText: "Email"),
                controller: _emailController,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Password"),
                controller: _passwordController,
              ),
              Builder(
                builder: (ctx) => ElevatedButton(
                  onPressed: () async {
                    SharedPreferences _prefs =
                        await SharedPreferences.getInstance();
                    _prefs.setString(
                      "email",
                      _emailController.text,
                    );
                    _prefs.setString(
                      "password",
                      _passwordController.text,
                    );
                    // print(_email);
                    // print(_password);
                    Navigator.of(ctx).pushReplacement(
                        MaterialPageRoute(builder: (_) => const MyApp()));
                  },
                  child: const Text("Sing Up"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
