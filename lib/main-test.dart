// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passwordVisibility = true;
  var themeModeSystem = ThemeMode.system;
  var iconMode = Icons.light_mode;
  var iconColor = Colors.amber;
  var textColorBtn = Colors.white;
  var myControllaer = TextEditingController();
  var dataInput = 'name';

  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        if (kDebugMode) {
          print(value);
        }
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        theme: ThemeData(primarySwatch: Colors.cyan),
        themeMode: themeModeSystem,
        home: Scaffold(
          appBar: AppBar(
              // backgroundColor: Colors.cyan,
              iconTheme: const IconThemeData(
                size: 40,
              ),
              title: const Text('App Test !'),
              actions: [
                IconButton(
                  onPressed: () => setState(() {
                    themeModeSystem = themeModeSystem == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
                    iconMode = iconMode == Icons.light_mode
                        ? Icons.dark_mode
                        : Icons.light_mode;
                    iconColor = iconColor == Colors.blueGrey
                        ? Colors.amber
                        : Colors.blueGrey;
                    textColorBtn = textColorBtn == Colors.black
                        ? Colors.white
                        : Colors.black;
                  }),
                  icon: Icon(iconMode),
                  color: iconColor,
                ),
              ]),
          // ignore: avoid_unnecessary_containers
          body: Container(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                // Image.network(
                //   'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png',
                //   height: 150,
                // ),
                Image.asset(
                  'assets/images/icon2.png',
                  height: 150,
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Your Name : ",
                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.person_4_outlined),
                    ),
                    keyboardType: TextInputType.name,
                    controller: myControllaer,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Your E-Mail :",
                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Your Address :",
                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.map_rounded),
                    ),
                    keyboardType: TextInputType.streetAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "0000 000 0000",
                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.phone),
                      prefixText: '+20 ',
                      prefixStyle: TextStyle(color: Colors.amber),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your Password :",
                      hintStyle: const TextStyle(fontSize: 13),
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisibility
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            passwordVisibility = !passwordVisibility;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordVisibility,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _datePicker,
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.cyan),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                            ),
                          ),
                          child: const Icon(Icons.calendar_month),
                        ),
                        ElevatedButton(
                          onPressed: () => setState(() {
                            dataInput = myControllaer.text;
                            print(dataInput);
                          }),
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.cyan),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                            ),
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 25, color: textColorBtn),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 20),
              ],
            ),
          )),
        ),
      );
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const CYour(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.cYour,
//                 children: [
//                   Text("Hello Body Abdullah"),
//                 ],
//               ),
//             ),
//           ),
//           body: Container(
//             color: const Color.fromARGB(255, 15, 255, 255),
//             child: const Column(
//               mainAxisAlignment: MainAxisAlignment.cYour,
//               children: [
//                 Text("Hello Body Abdullah"),
//                 Text("Hello Body Abdullah"),
//                 Text("Hello Body Abdullah"),
//                 Text("Hello Body Abdullah"),
//                 Text("Hello Body Abdullah"),
//               ],
//             ),
//           )
//           // floatingActionButton: ,
//           ),
//     );
//   }
// }
