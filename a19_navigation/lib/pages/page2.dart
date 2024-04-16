import 'package:a18_navigation/pages/page1.dart';
import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        // leading: Container(),
        title: Text(
          "Page Dua",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("INI PAGE 2", style: TextStyle(fontSize: 25)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (center) {
              return PageSatu();
            }));
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.keyboard_arrow_left)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
