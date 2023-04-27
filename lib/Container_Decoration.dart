// ---------------------Container Decoration------------------------------
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
      title: 'Flutter Practice',
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
          title: Text('Container Decoration'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
              child: Container(
            width: 150,
            height: 150,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
            ),
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[200],
                borderRadius: BorderRadius.circular(11),
                // border: Border.all(
                //   width: 2,
                //   color: Colors.black,
                // ),

                // boxShadow: [
                //   BoxShadow(blurRadius: 8.0),
                //   BoxShadow(color: Colors.white, offset: Offset(0, -16)),
                //   BoxShadow(color: Colors.white, offset: Offset(0, 16)),
                //   BoxShadow(color: Colors.white, offset: Offset(-16, -16)),
                //   BoxShadow(color: Colors.white, offset: Offset(-16, 16)),
                // ],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 100,
                    spreadRadius: 5,
                  )
                ],
              ),
            ),
          )),
        ));
  }
}
