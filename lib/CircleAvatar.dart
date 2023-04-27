// ---------------------Circle Avatar------------------------------
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
        title: Text('Circle Avatar'),
      ),
      body: Center(
        child: CircleAvatar(
          child: Text(
            "Ishant",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          // backgroundImage: AssetImage('assets/dp.jpg'),
          backgroundColor: Colors.green,
          radius: 100,
        ),
      ),
    );
  }
}
