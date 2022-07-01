import 'package:flutter/material.dart';
import 'package:flutter_app_01/example/11.bottom_tab_nav.dart';
import 'package:flutter_app_01/example/Router_Page_1.dart';
import 'package:flutter_app_01/example/Router_Page_2.dart';

class RouterPage extends StatelessWidget {
  String title;

  RouterPage({this.title = "测试页面"});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*加载组件*/
      routes: {
        "router_page_1":(context) =>RouterPage_1(title: "RouterPage_1"),
        "router_page_2":(context) =>RouterPage_2(title: "RouterPage_2")
      },
      home: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/router_page_1");
          }, child: Text("跳转到RouterPage_1")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/router_page_2");
          }, child: Text("跳转到RouterPage_2"))
        ],
      ),
    );
  }
}
