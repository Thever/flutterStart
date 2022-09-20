//  引入必要资源
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Setting.dart';
import 'Category.dart';

class Tabs extends StatefulWidget {
  //  定义序号变量 
  final index;

  // const Tabs({super.key});
  Tabs({Key ? key, this.index = 0}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  //  定义变量
  int _currentIndex = 0;
  //  组件生成对应页面
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  //  构造函数，用于接受外部值
  _TabsState(index){
    this._currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    //  自定义配置抽屉内容
    // return Scaffold(
    //   //  顶部导航
    //   appBar: AppBar(
    //     title:Text('Flutter Demo123')
    //   ),
    //   //  主要内容
    //   body: this._pageList[this._currentIndex],
    //   //  底部导航
    //   bottomNavigationBar: BottomNavigationBar(
    //     //  当前选中的内容序号
    //     currentIndex: this._currentIndex,
    //     //  点击tabbar的回调
    //     onTap: (int index) {
    //       //  重新渲染视图
    //       setState(() {
    //         //  更改选中的序号
    //         this._currentIndex = index;
    //       });
    //     },
    //     //  展示图标大小
    //     iconSize: 50.0,
    //     //  选中的颜色
    //     fixedColor: Colors.blue[200],
    //     //  配置底部可以有多个item, 默认的item数量为2-3个
    //     type:BottomNavigationBarType.fixed,
    //     //  内容集合
    //     // ignore: prefer_const_literals_to_create_immutables
    //     items: [
    //       BottomNavigationBarItem(
    //         //  图标
    //         icon: Icon(Icons.home),
    //         //  标题
    //         label: '首页',
    //       ),
    //       BottomNavigationBarItem(
    //         //  图标
    //         icon: Icon(Icons.category),
    //         //  标题
    //         label: '分类',
    //       ),
    //       BottomNavigationBarItem(
    //         //  图标
    //         icon: Icon(Icons.settings),
    //         //  标题
    //         label: '设置',
    //         //  标题
    //       ),
    //     ],
    //   ),
    //   //  左侧抽屉
    //   drawer: Drawer(
    //     child: Column(
    //       children: <Widget>[
    //         Row(
    //           children: <Widget>[
    //             Expanded(
    //               child: DrawerHeader(
    //                 //  文字
    //                 child: Text("你好flutter"),
    //                 //  装饰图片
    //                 decoration:BoxDecoration(
    //                   //  背景色
    //                   // color: Colors.yellow,
    //                   //  背景图
    //                   image: DecorationImage(
    //                     image: NetworkImage("https://www.itying.com/images/flutter/2.png"),
    //                     fit:BoxFit.cover,
    //                   )
    //                 )
    //               )
    //             )
    //           ],
    //         ),
    //         //  按钮
    //         ListTile(
    //           leading: CircleAvatar(
    //             child: Icon(Icons.home)
    //           ),
    //           title: Text("我的空间"),
    //         ),
    //         //  边界线
    //         Divider(),
    //         //  按钮
    //         ListTile(
    //           leading: CircleAvatar(
    //             child: Icon(Icons.people)
    //           ),
    //           title: Text("用户中心"),
    //         ),
    //         //  边界线
    //         Divider(),
    //         //  按钮
    //         ListTile(
    //           leading: CircleAvatar(
    //             child: Icon(Icons.settings)
    //           ),
    //           title: Text("设置中心"),
    //         ),
    //         //  边界线
    //         Divider(),
    //       ],
    //     ),
    //   ),
    //   //  右侧手提
    //   endDrawer: Drawer(
    //     child: Text('右侧侧边栏'),
    //   ),
    // );

    //  使用自带的DrawerHeader组件来配置内容
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter demo 带 drawer"),
      ),
      //  自定义咸鱼中间覆盖导航
      //  外面包裹Container是为了设置浮动按钮的代销位置
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          // 一半圆角
          borderRadius: BorderRadius.circular(40),
          // 设置背景
          color: Colors.white,
        ),
        //  字内容浮动按钮
        child: FloatingActionButton(
          //  图标
          child: Icon(Icons.add),
          //  点击切换回分类页
          onPressed: (){ 
            setState(() {  //改变状态
                // ignore: unnecessary_this
                this._currentIndex=1;
            });
          },
          //  根据序号显示不同颜色
          // ignore: unnecessary_this
          backgroundColor: this._currentIndex==1?Colors.red:Colors.yellow,
        ),
      ),
      //  指定浮动图标位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // ignore: unnecessary_this
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // ignore: unnecessary_this
        currentIndex: this._currentIndex,   //配置对应的索引值选中
        onTap: (int index){
            setState(() {  //改变状态
                // ignore: unnecessary_this
                this._currentIndex=index;
            });
        },
        iconSize:36.0,      //icon的大小
        fixedColor:Colors.red,  //选中的颜色  
        type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "分类"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "设置"
          )
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName:Text("子安武人"),
                    accountEmail: Text("dio@dio.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png"),                        
                    ),
                    decoration:BoxDecoration(                        
                      image: DecorationImage(
                        image: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                        fit:BoxFit.cover,
                      )
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network("https://www.itying.com/images/flutter/4.png"),
                      Image.network("https://www.itying.com/images/flutter/5.png"),
                    ],
                  )
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home)
              ),
              title: Text("我的空间"),
            
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people)
              ),
              title: Text("用户中心"),
              onTap: (){
                //  返回上一页，没有上一页-隐藏侧边栏
                Navigator.of(context).pop();
                //  跳转到页面
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings)
              ),
              title: Text("设置中心"),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧侧边栏'),
      ),
    );
  }
}