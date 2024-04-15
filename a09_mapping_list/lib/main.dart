import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": " Farhan Dwi Septian",
      "Age": 23,
      "favColor": ["Black", "Red", "Amber", "White", "Pink", "Green"]
    },
    {
      "Name": "Sandhika",
      "Age": 25,
      "favColor": ["White", "Pink", "Green", "Black", "Red", "Amber"]
    },
    {
      "Name": "Sujiwo",
      "Age": 85,
      "favColor": [
        "White",
        "Pink",
        "Green",
        "Black",
        "Red",
        "Amber",
        "White",
        "Pink",
        "Green",
        "Black"
      ]
    },
    {
      "Name": "Sujiwo",
      "Age": 85,
      "favColor": [
        "White",
        "Pink",
        "Green",
        "Black",
        "Red",
        "Amber",
        "White",
        "Pink",
        "Green",
        "Black"
      ]
    },
    {
      "Name": "Sujiwo",
      "Age": 85,
      "favColor": [
        "White",
        "Pink",
        "Green",
        "Black",
        "Red",
        "Amber",
        "White",
        "Pink",
        "Green",
        "Black"
      ]
    },
    {
      "Name": "Sujiwo",
      "Age": 85,
      "favColor": [
        "White",
        "Pink",
        "Green",
        "Black",
        "Red",
        "Amber",
        "White",
        "Pink",
        "Green",
        "Black"
      ]
    },
    {
      "Name": "Sujiwo",
      "Age": 85,
      "favColor": [
        "White",
        "Pink",
        "Green",
        "Black",
        "Red",
        "Amber",
        "White",
        "Pink",
        "Green",
        "Black"
      ]
    },
    {
      "Name": "Sujiwo",
      "Age": 85,
      "favColor": [
        "White",
        "Pink",
        "Green",
        "Black",
        "Red",
        "Amber",
        "White",
        "Pink",
        "Green",
        "Black"
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Center(
                child: Text(
                  "Mapping List",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: ListView(
              children: myList.map((data) {
                print(data['favColor']);
                List myFavColor = data['favColor'];
                print("-----------");
                print(myFavColor);
                return Card(
                  margin: EdgeInsets.all(15),
                  color: Colors.grey.shade300,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name: ${data['Name']}"),
                                Text("Age: ${data['Age']}"),
                              ],
                            )
                          ],
                        ),
                        //favColor
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: myFavColor.map((color) {
                              return Container(
                                color: Colors.amber,
                                margin: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 6),
                                padding: EdgeInsets.all(10),
                                child: Text(color),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            )));
  }
}
