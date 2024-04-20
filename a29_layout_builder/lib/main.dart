import 'package:flutter/material.dart';

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
    final widthApp = MediaQuery.of(context).size.width;
    final HeightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text(
        "Layout Builder",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    final heightBody = HeightApp - paddingTop - myAppBar.preferredSize.height;
    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: heightBody * 0.5,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp),
            MyContainer(widthApp),
            MyContainer(widthApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;

  MyContainer(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Container(
          width: widthApp * 0.25,
          height: constrains.maxHeight * 0.5,
          color: Colors.amber,
        );
      },
    );
  }
}
