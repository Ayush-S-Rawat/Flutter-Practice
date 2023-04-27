// ---------------------Inkwell------------------------------
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
      title: 'Flutter Practice',
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
        title: Text('Inkwell Widget'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Tapped");
          },
          onDoubleTap: () {
            print("Double Tapped");
          },
          onLongPress: () {
            print("Long Pressed");
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
