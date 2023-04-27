// ---------------------Stateful and Stateless - 3------------------------------
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var operator = TextEditingController();
  var answer = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Number-1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Number-2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: operator,
                decoration: InputDecoration(
                  hintText: 'Operator',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                var n1 = int.parse(num1.text.toString());
                var n2 = int.parse(num2.text.toString());
                var ch = operator.text.toString();
                if (ch == '+')
                  answer = (n1 + n2);
                else if (ch == '-')
                  answer = (n1 - n2);
                else if (ch == '*')
                  answer = (n1 * n2);
                else if (ch == '/') answer = (n1 / n2) as int;
                // {answer.toStringAsFixed(2)}
                setState(() {});
              },
              child: Text('Calculate'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 40,
              child: Center(
                child: Text(
                  '$answer',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
