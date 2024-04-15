import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text(
                "Date Format",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: Center(
            child: Text(
              // DateTime(2021, 09, 30, 23, 21).toString(),
              // DateTime.now().toString(),
              DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
              style: TextStyle(fontSize: 20),
            ),
          )),
    );
  }
}
