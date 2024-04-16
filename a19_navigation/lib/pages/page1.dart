import 'package:a18_navigation/pages/page2.dart';
import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Page Satu",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("INI PAGE 1", style: TextStyle(fontSize: 25)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //   return PageDua();
            // }));
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              // ->mengganti page dengan page 2
              return PageDua();
            }));
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.keyboard_arrow_right)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
