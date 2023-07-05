import 'package:flutter/material.dart';
import 'drawer.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectPageIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectPageIndex = index;
    });
    // Navigator.of(ctx).pushNamed(
    //   '/screen$index',
    //   arguments: {
    //     'id': 10,
    //     'titel': "info",
    //   },
    // );
  }

  final List<Map<String, Widget>> _pages = [
    // view switch page with dinamc Map
    {
      'page': const Scaffold(
        body: Center(
          child: Text("Home"),
        ),
      ),
      'title': const Text("Home"),
    },
    {
      'page': const Scaffold(
        body: Center(
          child: Text("Info"),
        ),
      ),
      'title': const Text("Info"),
    },
    // view switch page with list..
    // const Scaffold(
    //   // appBar: AppBar(title: const Text("Home")),
    //   body: Center(
    //     child: Text(
    //       "Home",
    //       style: TextStyle(fontSize: 25),
    //     ),
    //   ),
    // ),
    // const Scaffold(
    //   // appBar: AppBar(title: const Text("Info")),
    //   body: Center(
    //     child: Text(
    //       "Info",
    //       style: TextStyle(fontSize: 25),
    //     ),
    //   ),
    // ),
  ];
  var _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: _pages[_selectPageIndex]['title'],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   _pages[_selectPageIndex]['page'] as String,
              //   style: const TextStyle(fontSize: 30),
              // ),
              Text(
                'Value : ${(_value).round()}',
                style: const TextStyle(fontSize: 30),
              ),
              Slider(
                value: _value,
                onChanged: (val) => setState(() => _value = val),
                min: 0,
                max: 100,
                divisions: 10,
                label: '${(_value).round()}',
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          currentIndex: _selectPageIndex,
          selectedFontSize: 17,
          unselectedFontSize: 15,
          type: BottomNavigationBarType.shifting,
          selectedIconTheme: const IconThemeData(size: 20),
          onTap: _selectScreen,
          items: const [
            BottomNavigationBarItem(
              // backgroundColor: Colors.grey,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.grey,
              icon: Icon(Icons.info),
              label: "Info",
            ),
          ],
        ),
        drawerScrimColor: Colors.black87,
        drawer: const MyDrawer(),
      ),
    );
  }
}
