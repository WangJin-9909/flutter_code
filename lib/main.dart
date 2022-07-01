import 'package:flutter/material.dart';
import 'example/01.container.dart';
import 'example/02.list_view.dart';
import 'example/10.example_01.dart';

import 'tabs/Tabs.dart';


void main() {
  //runApp(MyApp());
  runApp(Tabs());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "标题"
          ),
        ),
        body: HomeContent(),
      ),
    );

  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,

        style: TextStyle(
            fontSize: 34.0
        ),
      ),
    );

  }
}

