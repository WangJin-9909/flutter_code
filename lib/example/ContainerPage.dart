import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  String title;

  ContainerPage({this.title = "测试页面"});

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
      body: ContainerPageBody()
    );
  }
}

class ContainerPageBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ContainerPageState();
  }
}

class ContainerPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(//类似于div组件，是容器组件
        child: Text("文本"),
        height: 300.0,
        width: 300.0,
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.all(Radius.circular(16))
        ),


      ),
    );
  }
}
