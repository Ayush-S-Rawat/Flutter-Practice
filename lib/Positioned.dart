// ---------------------Positioned Widget------------------------------
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
        title: Text('Positioned Widget'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.cyan,
        child: Stack(
          children: [
            Positioned(
              bottom: 40,
              right: 40,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
