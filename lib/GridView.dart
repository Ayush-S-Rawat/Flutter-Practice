// ---------------------Grid View------------------------------
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
    var arrColors = [
      Colors.red,
      Colors.orange,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.indigo,
      Colors.yellow,
      Colors.pink,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  Container(
                    color: arrColors[0],
                  ),
                  Container(
                    color: arrColors[1],
                  ),
                  Container(
                    color: arrColors[2],
                  ),
                  Container(
                    color: arrColors[3],
                  ),
                  Container(
                    color: arrColors[4],
                  ),
                  Container(
                    color: arrColors[5],
                  ),
                  Container(
                    color: arrColors[6],
                  ),
                  Container(
                    color: arrColors[7],
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                children: [
                  Container(
                    color: arrColors[0],
                  ),
                  Container(
                    color: arrColors[1],
                  ),
                  Container(
                    color: arrColors[2],
                  ),
                  Container(
                    color: arrColors[3],
                  ),
                  Container(
                    color: arrColors[4],
                  ),
                  Container(
                    color: arrColors[5],
                  ),
                  Container(
                    color: arrColors[6],
                  ),
                  Container(
                    color: arrColors[7],
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                ),
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //   maxCrossAxisExtent: 100,
                //   mainAxisSpacing: 11,
                //   crossAxisSpacing: 11,
                // ),
                itemBuilder: ((context, index) {
                  return Container(
                    color: arrColors[index],
                  );
                }),
                itemCount: arrColors.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
