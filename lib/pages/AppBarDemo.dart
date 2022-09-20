//  引入必要库
import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  多样式顶部内容
    // return Scaffold(
    //   //  配置顶部导航
    //   appBar: AppBar(
    //     //  导航名
    //     title:Text("AppBarDemoPage"),
    //     //  背景色 
    //     backgroundColor: Colors.red, 
    //     //  标题居中
    //     centerTitle:true,
    //     //  左侧按钮
    //     leading: IconButton(
    //       icon: Icon(Icons.menu),
    //       onPressed: (){
    //         print('menu');
    //       },
    //     ), 
    //     //  右侧内容
    //     actions: <Widget>[
    //       IconButton(
    //         icon: Icon(Icons.search),
    //         onPressed: (){
    //           print('search');
    //         },
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.settings),
    //         onPressed: (){
    //           print('settings');
    //         },
    //       )
    //     ],
    //   ),
    //   body: Text('AppBarDemoPage 自定义'),
    // );

    //  多样式切换内容
    //  tab切换控制器
    return DefaultTabController(
      //  指定页面数量
      length:2 ,
      child: Scaffold(
          appBar: AppBar(
            //  标题名称
            title:Text("AppBarDemoPage"), 
            //  标题是否居中 
            centerTitle:true,
            //  指定底部切换内容
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "热门"),
                Tab(text: "推荐")
              ],
            ),
          ),
          //  显示内容
          //  控制对应显示内容
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    title:Text("第一个tab")
                  ),
                  ListTile(
                    title:Text("第一个tab")
                  ),
                  ListTile(
                    title:Text("第一个tab")
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}