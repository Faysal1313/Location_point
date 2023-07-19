import 'package:flutter/material.dart';

class test extends StatefulWidget {
  test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  String? select_country;
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.orangeAccent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            iconSize: 40,
            currentIndex: selectindex,
            onTap: (index) {
              setState(() {
                selectindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: "widegt one", icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(
                  label: "widegt two", icon: Icon(Icons.ac_unit)),
            ]),
        body: Center(
          child: DropdownButton(
            hint: Text("Select From "),
            items: ["USA", "UAE", "SY", "EG", "SA"]
                .map((e) => DropdownMenuItem(
                      child: Text("Country $e"),
                      value: e,
                    ))
                .toList(),
            onChanged: (val) {
              setState(() {
                //print("$val");
                select_country = val.toString();
              });
            },
            value: select_country,
          ),
        ));
  }
}





/*class test extends StatefulWidget {
  test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  var text = "How Are You?";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$text"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = "welcom";
                    });
                  },
                  child: Text("change text")),
            ],
          ),
        ));
  }
}*/
