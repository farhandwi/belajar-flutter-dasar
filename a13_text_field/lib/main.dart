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
            centerTitle: true,
            title: Text(
              "Fitur Text Field",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                autocorrect: false,
                autofocus: true,
                enableSuggestions: true,
                enableInteractiveSelection: true, //bisa di paste
                // enabled: true,
                // obscureText: true,
                // obscuringCharacter: '@',
                keyboardType: TextInputType.phone,
                // readOnly: true,
              ),
            ),
          ),
        ));
  }
}
