import 'package:flutter/material.dart';

void main(){
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
            child: Text("Visible VS NonVisible"),
          ),
        ),
        body: Stack(
          // mainAxisAlignment: MainAxisAlignment.start, -> untuk Column Widget dan Row Widget
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.green,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ],
        ),
      )
    );
  }
}