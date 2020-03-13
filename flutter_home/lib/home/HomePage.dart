import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title:      new Text("首页"),
          actions: <Widget>[
            new Container(


            )

          ],
        ),
        body: new Center(
          child: null,
        ),
      ),

    );
  }



}