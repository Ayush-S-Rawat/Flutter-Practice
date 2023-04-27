// ---------------------Wrap Widget------------------------------
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
  double num = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body: Container(
        height: double.infinity,
        // width: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 11,
          runSpacing: 11,
          // crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Container(height: num, width: num, color: Colors.purple),
            Container(height: num, width: num, color: Colors.indigo),
            Container(height: num, width: num, color: Colors.blue),
            Container(height: num, width: num, color: Colors.green),
            Container(height: num, width: num, color: Colors.yellow),
            Container(height: num, width: num, color: Colors.orange),
            Container(height: num, width: num, color: Colors.red),
            Container(height: num, width: num, color: Colors.brown),
            Container(height: num, width: num, color: Colors.grey),
            Container(height: num, width: num, color: Colors.pink),
            Container(height: num, width: num, color: Colors.lime),
          ],
        ),
      ),
    );
  }
}
