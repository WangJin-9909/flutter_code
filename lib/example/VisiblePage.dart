import 'package:flutter/material.dart';

class VisiblePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VisiblePageState(title: "通过Visible控制可见");
  }
}

class VisiblePageState extends State {
  String title;
  bool isVisibile = true;
  bool isOffsetState = true;
  double opacity = 1;
  double container_height = 0;

  VisiblePageState({this.title = "测试页面"});

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
      body: Center(
        child: Column(
          children: [
            Visibility(
              child: Text("通过Visibility控制可见性"),
              visible: isVisibile,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    this.isVisibile = !this.isVisibile;
                  });
                },
                child: Text("切换可见性")),
            Offstage(
                offstage: !this.isOffsetState,
                child: Text("通过OffsetState控制可见性")),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    this.isOffsetState = !this.isOffsetState;
                  });
                },
                child: Text("切换可见性")),
            Opacity(
                opacity: this.opacity,
                child: Text("通过Opacity控制可见性")),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(this.opacity == 1.0){
                      this.opacity = 0.0;
                    }else{
                      this.opacity = 1.0;
                    }

                  });
                },
                child: Text("切换可见性")),
            Container(
                height: this.container_height,
                child: Text("通过Container控制可见性")),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(this.container_height > 0){
                      this.container_height = 0.0;
                    }

                  });
                },
                child: Text("切换可见性")),
            Container(
                height: this.container_height,
                child:getContainerWidget(),
            ),


          ],
        ),
      ),
    );
  }

  Widget getContainerWidget() {
    bool isHeight = true;
    if(isHeight){
      return Text("空组件占位");
    }else{
      return Container();
    }

  }
}
