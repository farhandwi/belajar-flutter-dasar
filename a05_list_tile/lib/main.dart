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
            title: const Center(
              child: Text(
                "List Tile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: ListView(
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text(
                  "This is subtitle lorem ipsum wahna kaje ga dibenakku",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text("10:10 PM"),
                // tileColor: Colors.amber,
                dense: true,
                onTap: () {
                  print("tapped");
                },
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
              const Divider(
                color: Colors.black,
              ),
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Farhan Dwi Septian"),
                subtitle: Text("This is subtitle"),
                trailing: Text("10:10 PM"),
              ),
            ],
          ),
        ));
  }
}
