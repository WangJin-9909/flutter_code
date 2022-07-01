import 'package:flutter/material.dart';
import 'package:flutter_app_01/utils/dialog_utils.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatelessWidget {
  String title;

  HttpPage({this.title = "测试页面"});

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
      body: HttpPageBody(),
    );
  }
}

class HttpPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HttpPageBodyState();
  }
}

class HttpPageBodyState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            child: Text("GET请求"),
            onPressed: () {
              testGET(context);
            }),
        ElevatedButton(child: Text("POST请求"), onPressed: () {
          testPOST(context);
        })
      ],
    );
  }
}

void testGET(BuildContext context) async {
  Uri url = Uri.parse("https://jd.itying.com/api/httpGet");
  var response = await http.get(url);
  print("response status : ${response.statusCode}");
  print("response body: ${response.body}");
  showAlertDialog(context, "GET返回", response.body);
}

void testPOST(BuildContext context) async{
  Uri url = Uri.parse("https://jd.itying.com/api/httpPOST");
  var response = await http.post(url, body:{"username":"wangJin", "age":"28"});
  print("response status : ${response.statusCode}");
  print("response body: ${response.body}");
  showAlertDialog(context, "GET返回", response.body);
}