import 'package:flutter/material.dart';
import 'package:practice/MainScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  var username = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  label: Text('Username'),
                  focusColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  label: Text('Password'),
                  focusColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                var prefs = await SharedPreferences.getInstance();
                prefs.setBool("Login", true);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => MainScreen())));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
