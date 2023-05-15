import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/MainScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:practice/Intro_Page.dart';

import 'LoginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: ((context) => IntroPage())));
    // });
    wheretogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Splash",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void wheretogo() async {
    var pref = await SharedPreferences.getInstance();
    var isloggedin = pref.getBool("Login");

    if (isloggedin != null) {
      if (isloggedin) {
        Timer(Duration(seconds: 3), () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: ((context) => MainScreen())));
        });
      } else {
        Timer(Duration(seconds: 3), () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: ((context) => LoginPage())));
        });
      }
    } else {
      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => LoginPage())));
      });
    }
  }
}
