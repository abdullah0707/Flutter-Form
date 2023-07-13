import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  _launchURL() async {
    String url = "https://youtu.be/tz4CRIquGLs";
    Uri ssUrl = Uri.parse(url);
    await canLaunchUrl(ssUrl)
        ? await launchUrl(ssUrl)
        : debugPrint('Could not launch $ssUrl');
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1), (a) => (a)),
      builder: (ctx, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Hello"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: snapshot.connectionState == ConnectionState.waiting
                    ? const CircularProgressIndicator()
                    : const Text('Done !'),
              ),
              ElevatedButton(
                onPressed: _launchURL,
                child: const Text('Launch Url'),
              )
            ],
          ),
        );
      },
    );
  }
}
