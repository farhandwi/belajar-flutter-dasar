import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Cupertino",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Platform.isIOS
                      ? CupertinoAlertDialog(
                          title: Text("Delete Item"),
                          content: Text("Are you sure to delete this item ?"),
                          actions: [
                            TextButton(onPressed: () {}, child: Text("No")),
                            TextButton(onPressed: () {}, child: Text("yes"))
                          ],
                        )
                      : AlertDialog(
                          title: Text("Delete Item"),
                          content: Text("Are you sure to delete this item ?"),
                          actions: [
                            TextButton(onPressed: () {}, child: Text("No")),
                            TextButton(onPressed: () {}, child: Text("yes"))
                          ],
                        );
                },
              );
            },
            child: Text("Alret Dialog"),
          ),
          ElevatedButton(
            onPressed: () {
              Platform.isAndroid
                  ? showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(2050),
                    )
                  : showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          color: Colors.blue,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            onDateTimeChanged: (datetime) {
                              print(datetime);
                            },
                            initialDateTime: DateTime.now(),
                          ),
                        );
                      });
            },
            child: Text("Date Picker"),
          ),
        ]),
      ),
    );
  }
}
