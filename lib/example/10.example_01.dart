import 'package:flutter/material.dart';

class MyExample01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("标题"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  int count_num = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("正在计数: ${count_num}"),
        ElevatedButton(
            onPressed: () {
              this.count_num++;
              print("++++++++++++++++++++");
            },
            child: Text("按钮")),
      ],
    );
  }
}

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
