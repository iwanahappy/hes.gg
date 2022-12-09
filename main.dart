import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hes_gg/champInfo.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class ChampSearch extends SearchDelegate {
  List<String> searchMenu = [
    "zed",
    "talon",
    "zark",
    "zed",
    "talon",
    "zark",
    "zed",
    "talon",
    "zark",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var Champ in searchMenu) {
      if (Champ.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(Champ);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var Champ in searchMenu) {
      if (Champ.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(Champ);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: ((context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            result = matchQuery[index];
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => campInfo(champ: result)));
          },
        );
      }),
    );
  }
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "HES.GG",
            style: TextStyle(color: Colors.black, fontSize: 60),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            iconSize: 50,
            onPressed: () {},
          ),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showSearch(context: context, delegate: ChampSearch());
                      },
                      child: Text('챔피언 검색'),
                      style: TextButton.styleFrom(minimumSize: Size(300, 50)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('유저 랭킹'),
                      style: TextButton.styleFrom(minimumSize: Size(300, 50)),
                    )
                  ],
                ),
                SizedBox(
                  height: 300,
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey, minimumSize: Size(300, 50)),
                  onPressed: () {
                    showSearch(context: context, delegate: ChampSearch());
                  },
                  child: Text(
                    '챔피언 검색',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
