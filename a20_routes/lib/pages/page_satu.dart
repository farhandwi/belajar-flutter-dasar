// import 'package:a20_routes/pages/gallery_page.dart';
import 'package:a20_routes/pages/gallery_page.dart';
import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  static const nameRoute = "/homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Route",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: Icon(
          Icons.arrow_right,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
