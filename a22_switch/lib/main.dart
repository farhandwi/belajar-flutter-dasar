import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Switch",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey.withOpacity(0.2),
              width: 1000,
              height: 60,
              child: Switch(
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.red,
                activeColor: Colors.amber,
                inactiveThumbColor: Colors.indigo,
                activeThumbImage: AssetImage("images/true.png"),
                inactiveThumbImage: AssetImage("images/false.png"),
                onChanged: (value) {
                  setState(() {
                    isSwitched = !isSwitched;
                  });
                  print(isSwitched);
                },
                value: isSwitched,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              (isSwitched == true) ? "Switch On" : "Switch Off",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
