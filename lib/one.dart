import 'package:flutter/material.dart';
import 'package:lesson1/listview.dart';
import 'package:lesson1/listview.dart';
import 'package:lesson1/radiobtn.dart';
import 'package:lesson1/switch.dart';
import 'package:lesson1/test.dart';
import 'package:lesson1/alert.dart';

import 'package:lesson1/test.dart';
import 'package:lesson1/cheak.dart';
import 'package:lesson1/cheak_list.dart';
import 'package:lesson1/snackbar.dart';
import 'package:lesson1/listview_builder.dart';
import 'package:lesson1/gridview.dart';
import 'package:lesson1/text_field.dart';
import 'package:lesson1/navigation_go.dart';

//@dart=2.9

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PAGE One")),
      body: Column(
        children: [
          Text("Page One"),
          ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              child: Text("Back")),
          ElevatedButton(
              onPressed: () {
                {
                  Navigator.of(context).pushNamed("navigation_go");
                }
              },
              child: Text("Go Home PAge"))
        ],
      ),
    );
  }
}
