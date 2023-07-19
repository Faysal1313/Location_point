import 'package:flutter/material.dart';

class test_search extends StatefulWidget {
  test_search({Key? key}) : super(key: key);

  @override
  State<test_search> createState() => _test_searchState();
}

class _test_searchState extends State<test_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Delegat"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: Datasearch());
            },
          )
        ],
      ),
    );
  }
}

class Datasearch extends SearchDelegate {
  List names = ["Ahmed", "Basel", "Mohamed", "Faysal"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List filternames =
    //    names.where((element) => element.startwith(query)).toList();
    List filternames =
        names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemCount: query == "" ? names.length : filternames.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            query = query == "" ? names[i] : filternames[i];
            showResults(context);
          },
          child: Container(
              padding: EdgeInsets.all(10),
              child: query == ""
                  ? Text(
                      "${names[i]}",
                      style: TextStyle(fontSize: 25),
                    )
                  : Text("${filternames[i]}", style: TextStyle(fontSize: 25))),
        );
      },
    );
  }
}
