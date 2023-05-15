import 'package:flutter/material.dart';
import 'package:practice/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var name = TextEditingController();

  var naam = 'User';

  @override
  void initState() {
    super.initState();
    getname();
  }

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
              "Welcome $naam",
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
              onPressed: () async {
                naam = name.text.toString();
                var prefs = await SharedPreferences.getInstance();
                prefs.setString("Name", naam);
                setState(() {});
              },
              child: Text('Reload'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                var prefs = await SharedPreferences.getInstance();
                prefs.setBool("Login", false);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => LoginPage())));
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }

  void getname() async {
    var prefs = await SharedPreferences.getInstance();
    naam = prefs.getString("Name") ?? "User";
    setState(() {});
  }
}
