import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home/index/index.dart';

void  main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter 测试",
      home: new  Index(),

    );
  }


}