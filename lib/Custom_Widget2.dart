// ---------------------Custom widget------------------------------
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
        title: Text('Custom Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Story(),
            Classlist(),
            posts(),
            credits(),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orange,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                // radius: 50,
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class Classlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.yellow,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                Column(
                  children: [
                    Text("Name"),
                    Text("Mobile No."),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.green,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class credits extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: Center(child: Text("Ayush Rawat")),
    );
  }
}
