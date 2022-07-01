import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(children: <Widget>[
          ListTile(
            title: Text("项目1"),
          ),
          ListTile(
            title: Text("项目2"),
          ),
          ListTile(
            title: Text("项目3"),
          ),
          ListTile(
            title: Text("项目4"),
          ),
        ]),
      ),
    );
  }
}
