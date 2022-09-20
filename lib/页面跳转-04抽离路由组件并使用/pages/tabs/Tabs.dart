//  引入必要资源
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Setting.dart';
import 'Category.dart';

class Tabs extends StatefulWidget {
  // const Tabs({super.key});

  Tabs({Key ? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  //  定义变量
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  导航
        appBar: AppBar(
          title:Text('Flutter Demo')
        ),
        //  主要内容
        body: this._pageList[this._currentIndex],
        //  底部导航
        bottomNavigationBar: BottomNavigationBar(
          //  当前选中的内容序号
          currentIndex: this._currentIndex,
          //  点击tabbar的回调
          onTap: (int index) {
            //  重新渲染视图
            setState(() {
              //  更改选中的序号
              this._currentIndex = index;
            });
          },
          //  展示图标大小
          iconSize: 50.0,
          //  选中的颜色
          fixedColor: Colors.blue[200],
          //  配置底部可以有多个item, 默认的item数量为2-3个
          type:BottomNavigationBarType.fixed,
          //  内容集合
          items: [
            BottomNavigationBarItem(
              //  图标
              icon: Icon(Icons.home),
              label: '首页',
              //  标题
            ),
            BottomNavigationBarItem(
              //  图标
              icon: Icon(Icons.category),
              label: '分类',
              //  标题
            ),
            BottomNavigationBarItem(
              //  图标
              icon: Icon(Icons.settings),
              label: '设置',
              //  标题
            ),
          ],
        ),
      );
  }
}