// ---------------------Rich Text------------------------------
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            // Default style
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
            ),
            children: <TextSpan>[
              TextSpan(text: "Hello "),
              TextSpan(
                text: "World!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              TextSpan(text: ' Welcome to '),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontFamily: 'MainFont',
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.deepOrange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
