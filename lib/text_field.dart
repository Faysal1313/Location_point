import 'package:flutter/material.dart';

class text_field extends StatefulWidget {
  text_field({Key? key}) : super(key: key);

  @override
  State<text_field> createState() => _testState();
}

class _testState extends State<text_field> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "you must write her",
                suffix: Text("ادخل الاسم "),
              ),
              keyboardType: TextInputType.number,
            )
          ],
        ));
  }
}
