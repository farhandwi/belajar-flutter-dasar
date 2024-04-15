import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController =
      TextEditingController(text: "INITIAL");

  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text(
              "Penggunaan Text Field",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: myController,
                    onChanged: (value) {
                      print("ON CHANGE");
                      print(myController.text);
                    },
                    onSubmitted: (value) {
                      print(value);
                      setState(() {
                        hasil = value;
                      });
                    },
                    onEditingComplete: () {
                      print("EDIT SUCCESS");
                    }, //->proses menjalankan apa sebelum disubmit
                  ),
                  Text(hasil),
                ],
              ),
            ),
          ),
        ));
  }
}
