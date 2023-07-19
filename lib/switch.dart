import 'dart:developer';

import 'package:flutter/material.dart';

class test_switch extends StatefulWidget {
  test_switch({Key? key}) : super(key: key);

  @override
  State<test_switch> createState() => _testState();
}

class _testState extends State<test_switch> {
  var text = "How Are You?";
  bool usa = false;
  String? country = "";
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Text("Choose Country", style: TextStyle(fontSize: 30)),
            Row(
              children: [
                Text("usa"),
                Switch(
                    value: usa,
                    onChanged: (val) {
                      setState(() {
                        usa = val;
                        // scaffoldkey.currentState.showBottomSheet(value, opacity)
                        // Scaffold.of(context).showBottomSheet((context) => Text("data")),
                        Scaffold.of(context).showBottomSheet<void>(
                          (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.amber,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text('BottomSheet'),
                                    ElevatedButton(
                                        child: const Text('Close BottomSheet'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        })
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                    })
              ],
            )
          ]),
        ));
  }
}
