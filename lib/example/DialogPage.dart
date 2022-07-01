import 'package:flutter/material.dart';
import 'package:flutter_app_01/utils/dialog_utils.dart' as dialog_utils;
import 'package:flutter_app_01/utils/toast_utils.dart' as toast_utils;

class DialogPage extends StatelessWidget {
  String title;

  DialogPage({this.title = "测试页面"});

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
      body: DialogPageBody(),
    );
  }
}

void showAlertDialog() {
  AlertDialog a = new AlertDialog(
    title: Text("测试标题"),
    content: Text("测试内容"),
    actions: [
      TextButton(onPressed: () {}, child: Text("确定")),
      TextButton(onPressed: () {}, child: Text("取消"))
    ],
  );
}

class DialogPageBody extends StatefulWidget {
  const DialogPageBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DialogPageBodyState();
  }
}

class DialogPageBodyState extends State {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("测试title"),
                      content: Text("测试content"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {

                            },
                            child: Text("确定")),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, "CANCEL");
                            },
                            child: Text("取消"))
                      ],
                    );
                  });
            },
            child: Text("AlertDialog")),
        ElevatedButton(
            onPressed: () {
              var result =  dialog_utils.showAlertDialog(context, "封装的AlertDialog", "封装的AlertDialog内容");
              toast_utils.showToast("用户按下了 = $result");
            },
            child: Text("使用工具封装的AlertDialog")),
        ElevatedButton(
            onPressed: () {
              dialog_utils.showSimpleDialog(context);

            },
            child: Text("使用工具封装的SimpleDialog"))
      ],
    );
  }
}
