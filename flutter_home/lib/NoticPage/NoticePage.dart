import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoticePageState();
  }


}
class NoticePageState extends State<NoticePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("通知"),
        ),
        body: new Center(
          child: null,
        ),
      ),

    );
  }


}