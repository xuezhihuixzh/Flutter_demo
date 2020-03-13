//创建一个Icon 展示控件
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationIconView {
  //创建两个属性 ，一个是用来展示Icon 一个是动画处理

  final BottomNavigationBarItem item;
  final AnimationController controller;

  //类似于java 中的构造方法
  //创建NavigationgIconView 需要传入三个参数 icon title  TickerProvider
  NavigationIconView({Widget icon, Widget title, TickerProvider vsync})
      : item = new BottomNavigationBarItem(icon: icon, title: title),
        controller = new AnimationController(
            //设置动画的持续时间
            duration: kThemeAnimationDuration,
            //默认属性和参数
            vsync: vsync);
}
