import 'dart:convert';

import 'package:flutter/material.dart';

class JsonPage extends StatelessWidget {
  String title;

  JsonPage({this.title = "测试页面"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          //返回上一级页面
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(title: Text(this.title)),
      body: JsonPageBody(),
    );
  }
}

class JsonPageBody extends StatefulWidget {
  const JsonPageBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return JsonPageBodyState();
  }
}

class JsonPageBodyState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              testMapToJson();
            },
            child: Text("Map转Json")),
        ElevatedButton(
            onPressed: () {
              testJsontoMap();
            },
            child: Text("Json转Map"))
      ],
    );
  }

  void testMapToJson() {
    Map map = {"username": "wangJin", "age": 28};
    String encode = json.encode(map);
    print("map转json结果 = $encode");
  }

  void testJsontoMap() {
    String str = '''{"username":"wangJin", "age":"28"} ''';
    Map user = json.decode(str);
    print(user["username"]);
  }
}
