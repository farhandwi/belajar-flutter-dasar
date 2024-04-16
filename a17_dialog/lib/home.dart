import "package:flutter/material.dart";

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "DIALOG",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah diklik");
          showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirm"),
                      content: Text("Are you sure to delete this item?"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              print("Klik No");
                              setState(() {
                                data = "FALSE";
                              });
                              Navigator.of(context).pop(false);
                            },
                            child: Text("No")),
                        ElevatedButton(
                            onPressed: () {
                              print("Klik yes");
                              setState(() {
                                data = "TRUE";
                              });
                              Navigator.of(context).pop(true);
                            },
                            child: Text("Yes")),
                      ],
                    );
                  })
              .then((value) => print(
                  value)); // -> value disini adalah kembalian dari Navigator of context pop
        },
        child: Icon(
          Icons.delete,
          color: Colors.blue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
