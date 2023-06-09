// ---------------------Stack Widget------------------------------
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
        title: Text('Stack Widget'),
      ),
      body: Container(
        height: 500,
        width: 500,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amberAccent,
            ),
            // Container(
            //   width: 160,
            //   height: 160,
            //   color: Colors.blue,
            // ),
            Positioned(
              left: 21,
              // right: 21,
              top: 21,
              // bottom: 21,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
