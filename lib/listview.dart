import 'package:flutter/material.dart';

class test_listview extends StatefulWidget {
  test_listview({Key? key}) : super(key: key);

  @override
  State<test_listview> createState() => _testState();
}

class _testState extends State<test_listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          physics: BouncingScrollPhysics(),
          children: [
            Text("Lighthous erp "),
            Container(
              child: Text("Contenr one"),
              color: Colors.pink,
              height: 200,
            ),
            Text("Lighthous erp "),
            Container(
              child: Text("Contenr one"),
              color: Colors.orange,
              height: 200,
            ),
            Text("Lighthous erp "),
            Container(
              child: Text("Contenr two"),
              color: Colors.green,
              height: 200,
            ),
            Text("Lighthous erp "),
            Container(
              child: Text("Contenr two"),
              color: Colors.lime,
              height: 200,
            ),
            Text("Lighthous erp "),
            Container(
              child: Text("Contenr two"),
              color: Colors.blue,
              height: 200,
            ),
            Text("Lighthous erp "),
            Container(
              child: Text("Contenr two"),
              color: Colors.red,
              height: 200,
            ),
          ],
        ));
  }
}
