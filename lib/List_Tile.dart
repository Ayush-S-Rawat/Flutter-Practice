// ---------------------List Tile------------------------------
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var names = {
  "Ayush Rawat": "Batsman",
  "Hemant": "Batsman",
  "Manoj": "Bowler",
  "Ankit": "Bowler",
  "Sidharth": "Bowler",
  "Mayank": "Batsman",
  "Ayush Banduni": "Bowler",
  "Aman": "Batsman",
  "Varun": "Batsman",
};

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
        title: Text('List Tile'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            var player_name = names.keys.iterator;
            var player_type = names.values.iterator;
            return ListTile(
              leading: Text("${index + 1}"),
              title: Text(
                names.keys.toList()[index],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
              subtitle: Text(
                names.values.toList()[index],
                style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Icon(Icons.add),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
              thickness: 3,
            );
          },
          itemCount: names.length),
    );
  }
}
