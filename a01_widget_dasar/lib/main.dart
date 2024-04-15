import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "Hello World",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
        body: Center(
          child: Text("HALO"),
        ),
      ),
    );
  }
}
