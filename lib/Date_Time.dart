// ---------------------Date Time Show and Picker------------------------------
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
    var datetime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Current date and time'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Current time is:\n${datetime.hour}: ${datetime.minute}: ${datetime.second}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Refresh")),
          Container(
            height: 20,
          ),
          Text(
            'Select a Date: ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 20,
          ),
          IconButton(
            onPressed: () async {
              DateTime? date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020, 1, 1),
                lastDate: DateTime(2025, 12, 31),
              );

              if (date != null) {
                print(
                    'Date selected is: ${date.day}-${date.month}-${date.year}');
              }
            },
            icon: Icon(Icons.calendar_month_outlined),
            iconSize: 60,
          ),
          Container(
            height: 20,
          ),
          Text(
            'Select a Time: ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 20,
          ),
          IconButton(
            onPressed: () async {
              TimeOfDay? time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
              );

              if (time != null) {
                print('Date selected is: ${time.hour}:${time.minute}');
              }
            },
            icon: Icon(Icons.timer_sharp),
            iconSize: 60,
          ),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}
