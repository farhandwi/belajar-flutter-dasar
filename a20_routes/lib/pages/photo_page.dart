import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const nameRoute = "/photo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Photo Page",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          "Photo Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
