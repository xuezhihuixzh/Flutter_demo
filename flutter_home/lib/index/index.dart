import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home/NoticPage/NoticePage.dart';
import 'package:flutter_home/home/HomePage.dart';
import 'package:flutter_home/idea/IdeaPage.dart';
import 'package:flutter_home/index/NavigationIconView.dart';

import 'package:flutter_home/market/MarketPage.dart';
import 'package:flutter_home/my/MyPage.dart';

/*
 创建一个带有状态的Widget
 */
class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndexState();
  }
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  //当前界面的索引值
  int _currentIndex = 0;

  //底部图标按钮区域
  List<NavigationIconView> _navigationViews;

  //用来存放我们图标对应的界面
  List<StatefulWidget> _pageList;

  //当前的显示页面
  StatefulWidget _currentPage;

  //定义一个空的设置状态值的方法
  void _rebuild() {
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化导航图标
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
          icon: new Icon(Icons.assessment), title: Text("首页"), vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.all_inclusive), title: Text("想法"), vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.add_shopping_cart),
          title: Text("市场"),
          vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.add_alarm), title: Text("通知"), vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.perm_identity), title: Text("我的"), vsync: this)
    ];
    //给每一个按钮区域加上监听
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }
    //将我们bottomBar 上面的按钮图标对应的页面存放起来
    _pageList = <StatefulWidget>[
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage(),
    ];
    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var bottomNavigationBar = new BottomNavigationBar(
      //添加icon 按钮
      items: _navigationViews.map((NavigationIconView navigationIconView) {
        return navigationIconView.item;
      }).toList(),
      //当前点击的索引值
      currentIndex: _currentIndex,
      //设置底部导航的工具栏的类型 fixed 固定
      type: BottomNavigationBarType.fixed,
      //添加点击事件
      onTap: (int index) {
        //点击之后，需要触发的逻辑事件
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          //动态展示我们当前的页面
          child: _currentPage,
        ),
        //底部的工具栏
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
