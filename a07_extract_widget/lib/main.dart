import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text(
                "Extract Widget",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return setItem(
                  imageUrl: "https://picsum.photos/id/$index/200/300",
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence(),
                  trailing: faker.date.time(),
                );
              })),
    );
  }
}

class setItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String trailing;

  setItem(
      {required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(subtitle),
      trailing: Text(trailing),
    );
  }
}
