import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.amber
  ];

  List<Widget> myListNomor = List.generate(
      100,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(fontSize: 10 + double.parse(index.toString())),
          ));

  final List<Widget> myList = [
    Container(
      height: 300,
      width: 300, //width tidak berpengaruh
      color: Colors.red,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.green,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.amber,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text(
                "List View",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // body: ListView(
          //   // scrollDirection: Axis.horizontal, //untuk scroll ke kanan
          //   children: myList,
          // )
          // body: ListView.builder(
          //     itemCount: myColor.length,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         height: 300,
          //         width: 300,
          //         color: myColor[index],
          //       );
          //     }),
          body: ListView(
            children: myListNomor,
          ),
        ));
  }
}
