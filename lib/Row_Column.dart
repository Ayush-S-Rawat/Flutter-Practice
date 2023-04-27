// ---------------------Row and Column------------------------------
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
        title: Text('Rows and Columns'),
      ),
      body: Container(
        height: 300,
        color: Colors.yellow[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "A",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "B",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "C",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "D",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "E",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
