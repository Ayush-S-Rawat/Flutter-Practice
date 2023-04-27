// ---------------------Styles and Themes------------------------------
import 'package:flutter/material.dart';
import 'package:practice/uihelper/utility.dart';

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
          primarySwatch: Colors.orange,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 50,
              // color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'MainFont',
            ),
            subtitle1: TextStyle(
              fontSize: 75,
              fontWeight: FontWeight.bold,
              fontFamily: 'MainFont',
            ),
          )),
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
        backgroundColor: Colors.blue,
        title: Text('Style and Theme'),
      ),
      body: Column(
        children: [
          Text(
            "Hello World",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.black),
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "Hello World",
            style: mTextStyle25(
              textkacolor: Colors.orange,
              textkiboldness: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
