import 'package:flutter/material.dart';
import 'package:flutter_app_01/utils/toast_utils.dart' as toast_utils;

Future showAlertDialog(
    BuildContext context, String title, String content) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "OK");
                },
                child: Text("确定")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "OK");
                },
                child: Text("取消")),
          ],
        );
      });
}

void showSimpleDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("选择内容"),
          children: [
            SimpleDialogOption(
              child: Text("OptionA"),
              onPressed: () {

                toast_utils.showToast("用户按下了 OptionA");
                Navigator.pop(context, "OptionA");
              },
            ),
            Divider(),//分割线
            SimpleDialogOption(
              child: Text("OptionB"),
              onPressed: () {
                toast_utils.showToast("用户按下了 OptionB");
                Navigator.pop(context, "OptionB");
              },
            ),
            Divider(),//分割线
            SimpleDialogOption(
              child: Text("OptionC"),
              onPressed: () {
                toast_utils.showToast("用户按下了 OptionC");
                Navigator.pop(context, "OptionC");
              },
            )
          ],
        );
      });
}
