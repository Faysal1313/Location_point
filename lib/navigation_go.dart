import 'package:flutter/material.dart';
import 'package:lesson1/one.dart';

class test_navigation_go extends StatefulWidget {
  test_navigation_go({Key? key}) : super(key: key);

  @override
  State<test_navigation_go> createState() => _testState();
}

class _testState extends State<test_navigation_go> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home11"),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  //   Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (context) {
                  //     return one();
                  //   }));
//----------------------------------------------------------------------
                  // Navigator.of(context).pushNamed("one");
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return one();
                  }));
                },
                child: Text("go to PAge 1"))
          ],
        ));
  }
}
