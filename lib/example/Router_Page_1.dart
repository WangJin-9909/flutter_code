import 'package:flutter/material.dart';

class RouterPage_1 extends StatelessWidget {
  String title;

  RouterPage_1({this.title = "测试页面"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          //返回上一级页面
          Navigator.of(context).pop();
        },

      ),
      appBar: AppBar(title: Text(this.title)),
      body: Text(this.title),
    );
  }
}
