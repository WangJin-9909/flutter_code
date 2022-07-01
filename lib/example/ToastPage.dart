import 'package:flutter/material.dart';
import 'package:flutter_app_01/utils/toast_utils.dart' as toast_utils;

class ToastPage extends StatelessWidget {
  String title;

  ToastPage({this.title = "测试页面"});

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
      body: ToastPageBoy(),
    );
  }
}

class ToastPageBoy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ToastPageBoyState();
  }
}

class ToastPageBoyState extends State {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {
            toast_utils.showToast("使用FlutterToast库实现Toast");
          }, child: Text("Fluttertoast库")),
        ]
      )
    );
  }
}
