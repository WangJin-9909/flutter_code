import 'package:flutter/material.dart';
import 'package:flutter_app_01/example/12.JsonPage.dart';
import 'package:flutter_app_01/example/RouterPathDemo.dart';
import 'package:flutter_app_01/example/SearchPage.dart';
import 'package:flutter_app_01/example/TestPage.dart';
import 'package:flutter_app_01/example/ToastPage.dart';
import 'package:flutter_app_01/example/DialogPage.dart';
import 'package:flutter_app_01/example/HttpPage.dart';
import 'package:flutter_app_01/example/Router_Page_1.dart';
import 'package:flutter_app_01/example/Router_Page_2.dart';
import 'package:flutter_app_01/example/RouterPathDemo.dart';
import 'package:flutter_app_01/example/VisiblePage.dart';
import 'package:flutter_app_01/example/ContainerPage.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*加载组件*/
      routes: {
        "router_page_1":(context) =>RouterPage_1(title: "RouterPage_1"),
        "router_page_2":(context) =>RouterPage_2(title: "RouterPage_2")
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("路由功能"),
        ),
        body: FirstPageBody(),
      ),
    );
  }
}

class FirstPageBody extends StatefulWidget {
  const FirstPageBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FirstPageBodyState();
  }
}

class CommonButton extends ElevatedButton {


  CommonButton(VoidCallback onPress, Widget child, {Key? key})
      : super(child: child, onPressed: onPress, key: key) {

  }
}

class FirstPageBodyState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return SearchPage();
            }));
          },
          child: Text("普通路由：页面跳转"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return TestPage(title: "构造器中传值，不是类Intent");
            }));
          },
          child: Text("普通路由：页面跳转通过构造器带参数"),
        ),
        Row(

          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return RouterPage(title: "RouterPage");
                }));
              },
              child: Text("命名路由：1"),

            ),
            Visibility(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return TestPage(title: "构造器中传值，不是类Intent");
                  }));
                },
                child: Text("命名路由：2"),

              ),
              visible: true,
            ),

          ]
        ),

        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return JsonPage(title: "JSON工具");
            }));
          },
          child: Text("Json工具"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return DialogPage(title: "Dialog工具");
            }));
          },
          child: Text("Dialog工具"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return HttpPage(title: "网络请求");
            }));
          },
          child: Text("网络请求"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return ToastPage(title: "Toast");
            }));
          },
          child: Text("Toast"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return ContainerPage(title: "Container组件");
            }));
          },
          child: Text("Container组件"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return VisiblePage();
            }));
          },
          child: Text("visible的实现"),
        ),
      ],
    );
  }

  void handlerPress() {}
}
