// ---------------------Text Field------------------------------
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var enable = false;
var useremail = TextEditingController();
var userpassword = TextEditingController();
var usernumber = TextEditingController();

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
        title: Text('Text Field'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                controller: useremail,
                decoration: InputDecoration(
                  // suffixText: "Username",
                  hintText: "Username",
                  // prefixText: "Username",
                  suffixIcon: IconButton(
                      onPressed: () {
                        print("Icon Pressed");
                        enable = true;
                      },
                      icon: Icon(Icons.email)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              ),
              width: 300,
            ),
            Container(
              height: 20,
            ),
            Container(
              child: TextField(
                controller: userpassword,
                enabled: enable,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.password),
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              ),
              width: 300,
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: usernumber,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Mobile",
                  suffixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                var email = useremail.text;
                var pass = userpassword.text;
                var num = usernumber.text.toString();

                print(
                  "E-mail is: $email\nPassword is: $pass\nPhone number is: $num",
                );
              },
              child: Text(
                "LOGIN",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
