import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  const FourPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FourPageState();
  }
}

class FourPageState extends State<FourPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("FourPage", style: TextStyle(fontSize: 40.0),),
      ],
    );
  }
}
