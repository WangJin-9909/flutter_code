

import 'package:flutter/material.dart';

/**
 * 自定义有状态组件
 */
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("标题"),
        ),
        body: HomePage(),
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

class HomePageState extends State<HomePage> {
  int count_num = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("正在计数: ${this.count_num}"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                this.count_num++;
              });
              print("------------------");
            },
            child: Text("按钮")),
      ],
    );
  }
}
