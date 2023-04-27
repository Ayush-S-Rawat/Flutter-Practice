// ---------------------Buttons------------------------------
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
          title: Text('Buttons'),
        ),
        body:
            // -------Flat Button-------
            // TextButton(
            //     onPressed: () {
            //       print("Text BUtton pressed !!!");
            //     },
            //     onLongPress: () {
            //       print("Long Pressed !!!");
            //     },
            //     child: Text("Click me")),
            // -------Elevated Button-------
            //     ElevatedButton(
            //   onPressed: () {
            //     print("Elevated Button pressed !!!");
            //   },
            //   onLongPress: () {
            //     print("Elevated Button long pressed !!!");
            //   },
            //   child: Text("Click Me"),
            // ));
            // -------Outlined Button------
            OutlinedButton(
                onPressed: () {
                  print("Outlined Button Pressed !!!");
                },
                child: Text("Click Me !!!")));
  }
}
