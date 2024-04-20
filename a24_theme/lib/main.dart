import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          brightness: Brightness.light,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          // visualDensity: VisualDensity.comfortable,
          // visualDensity: VisualDensity.compact,
          visualDensity: const VisualDensity(horizontal: 3, vertical: 4),
          primarySwatch: Colors.blueGrey,
          // primarySwatch: const MaterialColor(0xFFF5E0C3, <int, Color>{
          //   50: Color(0x1a5D4524),
          //   100: Color(0xa15D4524),
          //   200: Color(0xaa5D4524),
          //   300: Color(0xaf5D4524),
          //   400: Color(0xaf5D4524),
          //   500: Color(0xaf5D4524),
          //   600: Color(0xaf5D4524),
          //   700: Color(0xaf5D4524),
          //   800: Color(0xaf5D4524),
          //   900: Color(0xaf5D4524),
          // }),
          // primaryColor: Color(0xff5D4524),
          // appBarTheme: AppBarTheme(color: Colors.red),
          textTheme: TextTheme(
              headlineMedium: TextStyle(color: Theme.of(context).primaryColor)),
          appBarTheme: AppBarTheme(
              color: Colors.green,
              titleTextStyle: TextStyle(color: Colors.amber)),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "THEME",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a text.",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "This is a text.",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Button",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
    );
  }
}
