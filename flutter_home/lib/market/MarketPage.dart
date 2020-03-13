import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MarketPageState();
  }


}
class MarketPageState extends State<MarketPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("市场"),
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