import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Another extends StatefulWidget {
  const Another({super.key});

  @override
  State<Another> createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  String _name = '';
  int _age = 0;
  double _height = 0.0;
  bool _developer = false;
  List<String> _skills = ["", ""];

  @override
  dispose() {
    super.dispose();
    deleteData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: $_name"),
              Text("Age: $_age"),
              Text("Height: $_height"),
              Text("Developer: $_developer"),
              Text("Skill 1: ${_skills[0]}"),
              Text("Skill 2: ${_skills[1]}"),
              ElevatedButton(
                onPressed: getData,
                child: const Text('Get Data'),
              ),
              // ElevatedButton(
              //   onPressed: deleteData,
              //   child: const Text('Delete Data'),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  deleteData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.remove("name");
    _pref.remove("age");
    _pref.remove("height");
    _pref.remove("developer");
    _pref.remove("skills");
    print("Done Delete!");
  }

  getData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    setState(() {
      _name = _pref.getString("name")!;
      _age = _pref.getInt("age")!;
      _height = _pref.getDouble("height")!;
      _developer = _pref.getBool("developer")!;
      _skills = _pref.getStringList("skills")!;
    });
  }
}
