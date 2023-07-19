import 'package:flutter/material.dart';

class test_SnackBar extends StatefulWidget {
  test_SnackBar({Key? key}) : super(key: key);

  @override
  State<test_SnackBar> createState() => _testState();
}

class _testState extends State<test_SnackBar> {
  var text = "How Are You?";
  bool usa = false;
  static const String _title = 'Flutter Code Sample';
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Subscibe lighthous erp sys"),
              ));
            },
            child: const Text("show snackbar"),
          ),
        ));
  }
}
