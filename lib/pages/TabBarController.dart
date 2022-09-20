import 'package:flutter/material.dart';

// ignore_for_file: unnecessary_new

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key ? key}) : super(key: key);
  // TabBarControllerPage({Key ? key});

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

//  多继承
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {
  //  定义变量
  late TabController _tabController ;

  @override
  //  移除处理
  void dispose() { 
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  //  初始化
  void initState() {  
    //  继承实例化方法
    super.initState();
    //  实例化相关参数
    _tabController = new TabController(
      //  固定写法
      vsync: this,
      //  内容长度
      length: 2
    );
    //  添加监听
    _tabController.addListener((){
      //  打印序列值
      print(_tabController.index);     
    });
  }  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController,  //注意
          tabs: <Widget>[
            Tab(text:"热销"),
            Tab(text:"推荐"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,  //注意
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐"))
          
        ],
      ),
    );
  }
}