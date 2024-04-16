import 'package:a21_drawer/pages/setting_page.dart';
import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              height: 120,
              color: Colors.red,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Menu Pilihan",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return PageSatu();
                }));
              },
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return SettingPage();
                }));
              },
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Page Satu",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Text(
        "Home Page",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
