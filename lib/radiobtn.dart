import 'dart:developer';

import 'package:flutter/material.dart';

class test_radio extends StatefulWidget {
  test_radio({Key? key}) : super(key: key);

  @override
  State<test_radio> createState() => _testState();
}

class _testState extends State<test_radio> {
  var text = "How Are You?";
  bool usa = false;
  String? country = "";
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
                Radio(
                  value: "usa",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text("egypt"),
                Radio(
                  value: "eg",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text("syria"),
                Radio(
                  value: "sy",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val.toString();
                    });
                  },
                )
              ],
            )
          ]),
        ));
  }
}
