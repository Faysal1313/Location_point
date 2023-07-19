import 'package:flutter/material.dart';

class test_chk_list extends StatefulWidget {
  test_chk_list({Key? key}) : super(key: key);

  @override
  State<test_chk_list> createState() => _testState();
}

class _testState extends State<test_chk_list> {
  var text = "How Are You?";
  bool usa = false;
  bool eg = false;
  bool sy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            CheckboxListTile(
                title: Text("LightHouse erp"),
                subtitle: Text(
                  "Erp",
                  style: TextStyle(color: Colors.red),
                ),
                value: usa,
                onChanged: (val) {
                  setState(() {
                    usa = val!;
                  });
                }),
            CheckboxListTile(
                title: Text("eg erp"),
                subtitle: Text(
                  "Erp",
                  style: TextStyle(color: Colors.red),
                ),
                value: eg,
                onChanged: (val) {
                  setState(() {
                    eg = val!;
                  });
                }),
            CheckboxListTile(
                title: Text("sy erp"),
                subtitle: Text(
                  "Erp",
                  style: TextStyle(color: Colors.red),
                ),
                value: sy,
                onChanged: (val) {
                  setState(() {
                    sy = val!;
                  });
                })
          ]),
        ));
  }
}
