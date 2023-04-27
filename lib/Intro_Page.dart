import 'package:flutter/material.dart';
import 'package:practice/main.dart';

class IntroPage extends StatelessWidget {
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 75,
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return MyHomePage(name.text.toString());
                  })));
                },
                child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
