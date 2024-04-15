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
            leading: Container(
              color: Colors.amber,
            ),
            leadingWidth: 50,
            backgroundColor: Colors.blue,
            title: Container(
              //width:35, //kalau tidak memakai width dia akan menyesuaikan dengan ukuran masksimal
              height: 35,
              color: Colors.green,
            ),
            titleSpacing: 20,
            centerTitle: false,
            actions: [
              Container(
                width: 35,
                // height: 1000,
                color: Colors.black,
              ),
              Container(
                width: 35,
                // height: 1000,
                color: Colors.purple,
              ),
              Container(
                width: 35,
                // height: 1000,
                color: Colors.pink,
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Container(width: 50, height: 60, color: Colors.grey),
            ),
            // flexibleSpace: Container(
            //   width: 1,
            //   height: 25,
            //   color: Colors.amberAccent,
            // ),
            flexibleSpace: Center(child: Text("Halo ini flexible space")),
          ),
        ));
  }
}
