import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IdeaPageState();
  }
}

class IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("想法"),
          actions: <Widget>[new Container()],
        ),
        body: new Center(
          child: null,
        ),
      ),
    );
  }
}
