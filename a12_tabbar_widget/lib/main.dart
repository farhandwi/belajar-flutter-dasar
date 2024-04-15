import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    const Tab(
      // text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    const Tab(
      text: "Tab 2",
      // icon: Icon(Icons.add_alarm)
    ),
    const Tab(
        // text: "Tab 3",
        icon: Icon(Icons.add_call)),
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       appBar: AppBar(
  //         backgroundColor: Colors.blue,
  //         title: Text(
  //           "TabBar Widget",
  //           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  //         ),
  //         bottom: PreferredSize(
  //           preferredSize: Size.fromHeight(40),
  //           child: DefaultTabController(
  //             length: myTab.length,
  //             child: TabBar(
  //               indicatorColor: Colors.black,
  //               indicatorWeight: 5,
  //               indicatorSize: TabBarIndicatorSize.tab,
  //               indicatorPadding: EdgeInsets.all(2),
  //               indicator: BoxDecoration(
  //                 color: Colors.amber,
  //                 // borderRadius: BorderRadius.circular(50)),
  //                 border: Border(
  //                   bottom: BorderSide(color: Colors.black, width: 5),
  //                 ),
  //               ),
  //               tabs: myTab,
  //               labelColor: Colors.white,
  //               unselectedLabelColor: Colors.yellow,
  //               labelStyle: TextStyle(fontWeight: FontWeight.bold),
  //               unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
  //             ),
  //           ),
  //         ),
  //         centerTitle: true,
  //       ),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       appBar: PreferredSize(
  //         preferredSize: Size.fromHeight(100),
  //         child: DefaultTabController(
  //           length: myTab.length,
  //           child: AppBar(
  //             backgroundColor: Colors.blue,
  //             title: Text(
  //               "TabBar Widget",
  //               style:
  //                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  //             ),
  //             bottom: TabBar(
  //               tabs: myTab,
  //               labelColor: Colors.white,
  //             ),
  //             centerTitle: true,
  //           ),
  //         ),
  //       ),
  //       body: TabBarView(
  //         children: [
  //           Center(
  //             child: Text("Tab 1"),
  //           ),
  //           Center(
  //             child: Text("Tab 2"),
  //           ),
  //           Center(
  //             child: Text("Tab 3"),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                "TabBar Widget",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: TabBar(
                  indicatorColor: Colors.black,
                  indicatorWeight: 5,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.all(2),
                  indicator: BoxDecoration(
                    color: Colors.amber,
                    // borderRadius: BorderRadius.circular(50)),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5),
                    ),
                  ),
                  tabs: myTab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.yellow,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
              centerTitle: true,
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Tab 1", style: TextStyle(fontSize: 25)),
                ),
                Center(
                  child: Text("Tab 2", style: TextStyle(fontSize: 25)),
                ),
                Center(
                  child: Text("Tab 3", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
          ),
        ));
  }
}
