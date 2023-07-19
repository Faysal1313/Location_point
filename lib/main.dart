import 'package:flutter/material.dart';
import 'package:lesson1/camira_postion.dart';
import 'package:lesson1/gbs.dart';
import 'package:lesson1/google_map.dart';
import 'package:lesson1/listview.dart';
import 'package:lesson1/listview.dart';
import 'package:lesson1/locat_move.dart';
import 'package:lesson1/one.dart';
import 'package:lesson1/pik_image.dart';
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
import 'package:lesson1/search.dart';
import 'package:lesson1/live_location';

//@dart=2.9
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //    home: HomePage(),
      // home: test(),
      //  home: test_chk(),
      //home: test_chk_list(),
//      home: test_radio(),
      // home: test_switch(),
      // home: test_SnackBar(),
      //home: test_alert(),
//      home: test_listview(),
//      home: test_listview_builder(),
//      home: test_gridview(),
      //  home: text_field(),
      //  home: test_navigation_go(),
      // home: test_search(),
      // home: Gbs_nav(),
//      home: Goolge_map(),
      //  home: Camira_postion(),
//      home: Locat_move(),
      // home: Live_location(),
      home: Pik_image(),

      routes: {
        "one": (context) => one(),
        "navigation_go": (context) => test_navigation_go()
      },
    );
  }
}
