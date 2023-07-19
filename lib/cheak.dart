import 'package:flutter/material.dart';

class test_chk extends StatefulWidget {
  test_chk({Key? key}) : super(key: key);

  @override
  State<test_chk> createState() => _testState();
}

class _testState extends State<test_chk> {
  var text = "How Are You?";
  bool usa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Text("Choose Country", style: TextStyle(fontSize: 30)),
            Row(
              children: [
                Text("usa"),
                Checkbox(
                    value: usa,
                    onChanged: (bool? val) {
                      setState(() {
                        usa = val!;
                      });
                    })
              ],
            )
          ]),
        ));
  }
}
