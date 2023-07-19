import 'package:flutter/material.dart';

class test_gridview extends StatefulWidget {
  test_gridview({Key? key}) : super(key: key);

  @override
  State<test_gridview> createState() => _testState();
}

class _testState extends State<test_gridview> {
  @override
  List mobile = [
    {"name": "samsong", "screen": "6.2", "cpu": "8 core"},
    {"name": "Nokia", "screen": "5", "cpu": "4 core"},
    {"name": "Apple", "screen": "6", "cpu": "9 core"},
    {"name": "Oppo", "screen": "5", "cpu": "8 core"},
    {"name": "Lenvov", "screen": "8", "cpu": "8 core"},
    {"name": "Sony", "screen": "7", "cpu": "9 core"},
    {"name": "LG", "screen": "10", "cpu": "9 core"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("homebage"),
          leading: IconButton(
            icon: Icon(Icons.access_time),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.hail),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.h_mobiledata_rounded),
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(),
        body: Container(
            child: GridView.builder(
                itemCount: mobile.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 1),
                itemBuilder: (context, i) {
                  return Container(
                    //  margin: EdgeInsets.all(10),
                    child: ListTile(
                      tileColor: Colors.blue,
                      title: Text("${mobile[i]["name"]}"),
                      subtitle: Text("${mobile[i]["screen"]}"),
                      trailing: Text("cpu ${mobile[i]["cpu"]}"),
                    ),
                  );
                })));
  }
}
