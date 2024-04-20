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
              "Fit Box",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Container(
              color: Colors.blue,
              width: 300,
              // height: 200,
              child: FittedBox(
                alignment: Alignment.centerRight,
                fit: BoxFit.cover,
                child: Image.network("https://picsum.photos/200/200"),
              ),
            ),
          ),
        ));
  }
}
