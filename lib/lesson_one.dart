import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({super.key});
  // get floatingActionButton => null;
  buttonOnPressed(msg) {
    // ignore: avoid_print
    print('clicked : $msg');
  }

  @override
  Widget build(BuildContext context) {
    ThemeData.dark();
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.yellow,
        foregroundColor: Colors.black,
        surfaceTintColor: Colors.indigo,
        backgroundColor: Colors.amber,
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        title: const Text('Home Page'),
        actions: const [
          Icon(Icons.sanitizer_sharp),
          Icon(Icons.mail_lock),
          Icon(Icons.navigation),
        ],
      ),
      body: Container(
        // color: Colors.black26,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Hello Abdullah!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                Text(
                  'Hello Abdullah!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                Text(
                  'Hello Abdullah!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () => buttonOnPressed('Hello Abdullah'),
                    child: const Text('a')),
                OutlinedButton(
                    onPressed: () => buttonOnPressed('Hello Abdullah'),
                    child: const Text('b')),
                ElevatedButton(
                    onPressed: () => buttonOnPressed('Hello Abdullah'),
                    child: const Text('c')),
              ],
            ),
            Row(
              children: [
                IconButton(
                  // ignore: avoid_print
                  onPressed: () => buttonOnPressed('Hello Abdullah'),
                  icon: const Icon(Icons.home_filled),
                ),
                FloatingActionButton.extended(
                  label: const Text('Add'),
                  onPressed: () => buttonOnPressed('Hello Abdullah ! '),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.white60,
                      width: 3,
                    ),
                  ),
                  splashColor: Colors.amber,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () => buttonOnPressed('Hello Abdullah'),
                  icon: const Icon(Icons.search),
                  label: const Text('a'),
                ),
                OutlinedButton(
                  onPressed: () => buttonOnPressed('Hello Abdullah'),
                  child: const Text('b'),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.red,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  onPressed: () => buttonOnPressed('Hello Abdullah'),
                  child: const Text('c'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => buttonOnPressed('Hello Abdullah ! '),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black45,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.white60,
            width: 3,
          ),
        ),
        splashColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
