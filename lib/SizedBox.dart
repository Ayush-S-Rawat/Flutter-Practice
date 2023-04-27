// ---------------------Sized Box------------------------------
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

// Sized Box is also used for giving spaces between the widgets

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sized Box'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            // maxHeight: 80,
            maxWidth: 300,
            minHeight: 40,
            minWidth: 100,
          ),
          child: SizedBox.square(
            // width: 100,
            // height: 40,
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {
                print("Clicked");
              },
              child: Text("Click"),
            ),
          ),
        ),
      ),
    );
  }
}
