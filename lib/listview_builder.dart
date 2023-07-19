import 'package:flutter/material.dart';

class test_listview_builder extends StatefulWidget {
  test_listview_builder({Key? key}) : super(key: key);

  @override
  State<test_listview_builder> createState() => _testState();
}

class _testState extends State<test_listview_builder> {
  @override
  List mobile = [
    {"name": "s20 ultr", "screen": "6.2", "cpu": "8 core"},
    {"name": "Nokia", "screen": "5", "cpu": "4 core"},
    {"name": "Apple", "screen": "6", "cpu": "9 core"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: ListView.builder(
              itemCount: mobile.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("${mobile[i]["name"]}"),
                  subtitle: Text("${mobile[i]["screen"]}"),
                  trailing: Text("cpu ${mobile[i]["cpu"]}"),
                );
              }),
        ));
  }
}
