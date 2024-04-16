// import 'package:a20_routes/pages/photo_page.dart';
import 'package:a20_routes/pages/photo_page.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  static const nameRoute = "/gallery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Gallery Page",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Gallery Page",
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_left,
                    size: 40,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return PhotoPage();
                    // }));
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 40,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
