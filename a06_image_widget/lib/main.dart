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
            title: const Center(
              child: Text("Image Widget",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          body: Center(
            child: Container(
              width: 200,
              height: 300,
              color: Colors.amber,
              child: Image.asset(
                "images/image.jpg",
                fit: BoxFit.cover,
              ),
              // child: Image(image: AssetImage("images/image.jpg")),
              // child: const Image(
              //   fit: BoxFit.cover,
              //   // fit: BoxFit.fill,
              //   image: NetworkImage("https://picsum.photos/100/200.jpg"),
              // )
            ),
          ),
        ));
  }
}
