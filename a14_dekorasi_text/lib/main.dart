import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

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
            centerTitle: true,
            title: Text(
              "Dekorasi Text Field",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                autocorrect: false,
                showCursor: true,
                cursorColor: Colors.red,
                // cursorWidth: 10,
                // cursorHeight: 25,
                // cursorRadius: Radius.circular(20),

                textAlign: TextAlign.start,
                // textAlignVertical: TextAlignVertical.center,
                textCapitalization: TextCapitalization.words,

                style: TextStyle(color: Colors.red, fontSize: 20),

                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      size: 35,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    hoverColor: Colors.blue.withOpacity(0.2),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    // prefixIcon: Icon(Icons.add),
                    // prefixText: "Name: ",
                    hintText: "Please input your name",
                    hintStyle: TextStyle(color: Colors.green),
                    labelText: "Full name",
                    labelStyle: TextStyle(color: Colors.green)),
              ),
            ),
          ),
        ));
  }
}
