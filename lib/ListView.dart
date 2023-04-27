// ---------------------List View------------------------------
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var names = [
  "Ayush Rawat",
  "Hemant",
  "Manoj",
  "Ankit",
  "Sidharth",
  "Mayank",
  "Ayush Banduni",
  "Aman",
  "Varun",
];

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
        title: Text('List View'),
      ),
      body:
          // ListView(children: []),
          // List View is for Static list.
          // Scroll Direction: Axis.
          // reverse: To make the start from the other end
          ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              names[index],
              style: TextStyle(
                fontSize: 25,
                color: Colors.lightGreen,
              ),
            ),
          );
        },
        itemCount: names.length,
        itemExtent: 200,
      ),
      // ListView.Seperated()
      // Use this if you want to seperate list items with a widget in between
      // cannot use itemextent in this
      // Mandatory to return Divider(height: , thickness: );
    );
  }
}
