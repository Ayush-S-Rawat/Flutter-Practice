// ---------------------Font Awesome Icons------------------------------
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: Text('Font Awesome'),
      ),
      body: Center(
        child: Row(
          children: [
            Icon(
              Icons.lock,
              size: 30,
            ),
            FaIcon(
              FontAwesomeIcons.amazonPay,
              size: 30,
            ),
            FaIcon(
              FontAwesomeIcons.meta,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
