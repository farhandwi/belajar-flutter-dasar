import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(
      50,
      (index) => Container(
            // height: 30,
            // width: 100,
            color: Color.fromARGB(255, Random().nextInt(255),
                Random().nextInt(255), Random().nextInt(255)),
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text(
              "Grid View",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          // body: GridView(
          //   padding: const EdgeInsets.all(10),
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 4,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //       childAspectRatio: 3 / 4),
          //   children: myList,
          // ),
          // body: GridView.count(
          //   childAspectRatio: 4 / 3,
          //   padding: const EdgeInsets.all(10),
          //   crossAxisCount: 3,
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   children: myList,
          // ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemCount: 50, // Jumlah item dalam grid
            itemBuilder: (context, index) {
              return Container(
                color: Colors
                    .blue[100 * ((index % 8) + 1)], // Berikan variasi warna
                alignment: Alignment.center,
                child: Text(
                  'Item ${index + 1}', // Tampilkan nomor item
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
