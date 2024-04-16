import 'package:a20_routes/pages/gallery_page.dart';
import 'package:a20_routes/pages/page_satu.dart';
import 'package:a20_routes/pages/photo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PageSatu.nameRoute,
      routes: {
        PageSatu.nameRoute: (context) => PageSatu(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        PhotoPage.nameRoute: (context) => PhotoPage(),
      },
      home: PageSatu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
