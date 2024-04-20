import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          "Flexible Vs Expended",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        children: [
          Flexible(
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("Teks 1"),
            ),
          ),
          Flexible(
            flex: 10,
            // fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text("Teks 2 - sedikit"),
            ),
          ),
          Flexible(
            // fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.orange,
              child: Text("Teks 3"),
            ),
          ),
        ],
      ),
    );
  }
}
