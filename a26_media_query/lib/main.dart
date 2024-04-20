import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text(
        "Media Query",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bool isLanscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context)
            .padding
            .top; //Mengukur ukuran layar device dari atas ke bawah
    return Scaffold(
      appBar: myAppBar,
      body: Center(
          child: (isLanscape)
              ? Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.5,
                      width: mediaQueryWidth,
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.grey.withOpacity(0.2),
                      height: bodyHeight * 0.5,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return GridTile(
                              child: Container(
                            color: Color.fromARGB(255, Random().nextInt(156),
                                Random().nextInt(156), Random().nextInt(156)),
                          ));
                        },
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.3,
                      width: mediaQueryWidth,
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.grey.withOpacity(0.2),
                      height: bodyHeight * 0.7,
                      child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text("Halo Semua"),
                          );
                        },
                      ),
                    )
                  ],
                )),
    );
  }
}
