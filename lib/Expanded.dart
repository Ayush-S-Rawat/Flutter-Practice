// ---------------------Expanded Widgets------------------------------
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
        title: Text('Expanded Widgets'),
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
