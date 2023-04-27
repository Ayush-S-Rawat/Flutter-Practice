// ---------------------Custom Widget------------------------------
import 'package:flutter/material.dart';
import 'package:practice/uihelper/utility.dart';
import 'package:practice/widgets/rounded_btn.dart';

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
        title: Text('Custom Widget'),
      ),
      body:
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Click Me!!!"),
          // ),
          Center(
        child: Container(
          width: 100,
          child: Roundedbutton(
            btn_name: "Play",
            icon: Icon(Icons.play_arrow),
            txt_style: mTextStyle25(),
            callback: (() {
              print("Logged In!!!");
            }),
          ),
        ),
      ),
    );
  }
}
