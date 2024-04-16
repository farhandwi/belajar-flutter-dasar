import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyPage> {
  List<String> items = []; // This list will hold your items.

  @override
  void initState() {
    super.initState();
    items = List.generate(
        20, (i) => faker.person.name()); // Example data generation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Dismissible",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]), // Ensure key uniqueness based on item data.
            onDismissed: (direction) {
              // When item is dismissed remove it from the list
              setState(() {
                items.removeAt(index);
              });
            },
            confirmDismiss: (direction) async {
              // Ask user to confirm the dismissal
              final result = await showDialog<bool>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirm"),
                      content:
                          Text("Are you sure you want to delete this item?"),
                      actions: [
                        ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: Text("No")),
                        ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: Text("Yes")),
                      ],
                    );
                  });
              return result ??
                  false; // In case the dialog is dismissed by tapping outside of it
            },
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 30,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 8),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text(items[index]),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}

// class MyPage extends StatelessWidget {
//   final Faker faker = Faker();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//           title: Text(
//             "DISMISSIBLE",
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//           )),
//       body: ListView.builder(
//           padding: EdgeInsets.all(5),
//           itemCount: 100,
//           itemBuilder: (context, index) {
//             return Dismissible(
//               onDismissed: (direction) {
//                 print("DISMISSED");
//                 print(direction);
//                 (direction == DismissDirection.endToStart)
//                     ? print("endToStart")
//                     : print("startToEnd");
//               },
//               confirmDismiss: (direction) {
//                 return showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         title: Text("Confirm"),
//                         content: Text("Are you sure to delete this item?"),
//                         actions: [
//                           ElevatedButton(
//                               onPressed: () {
//                                 return Navigator.of(context).pop(false);
//                               },
//                               child: Text("No")),
//                           ElevatedButton(
//                               onPressed: () {
//                                 return Navigator.of(context).pop(true);
//                               },
//                               child: Text("Yes")),
//                         ],
//                       );
//                     });
//               },
//               key: Key(index.toString()),
//               direction: DismissDirection.endToStart,
//               background: Container(
//                 color: Colors.red,
//                 child: Icon(
//                   Icons.delete,
//                   size: 30,
//                 ),
//                 alignment: Alignment.centerRight,
//                 padding: EdgeInsets.only(right: 8),
//               ),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   child: Center(
//                     child: Text("${index + 1}"),
//                   ),
//                 ),
//                 title: Text(faker.person.name()),
//                 subtitle: Text(faker.lorem.sentence()),
//               ),
//             );
//           }),
//     );
//   }
// }
