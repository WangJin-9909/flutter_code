

import 'package:flutter/material.dart';
import 'package:flutter_app_01/tabs/FirstPage.dart';
import 'package:flutter_app_01/tabs/FourPage.dart';
import 'package:flutter_app_01/tabs/SecondPage.dart';
import 'package:flutter_app_01/tabs/ThirdPage.dart';


/**
 * 自定义有状态组件
 */

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TabState();
  }
}

class TabState extends State {
  int tab_index = 0;
  List pageList = <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourPage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("标题"),
        ),*/
        body: pageList[this.tab_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.tab_index,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "第一",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "第二",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: "第三",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.table_rows_outlined),
              label: "第四",
            ),
          ],
          onTap: (int valueChanged) {
            print("valueChanged = $valueChanged");
            setState(() {
              this.tab_index = valueChanged;

            });
          },
        ),
      ),
    );
  }
}
