// import 'package:flutter/material.dart';

// // 入口
// void main() {
//   //  调用内部方法
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//  自己写入口
//  引入库
import 'dart:convert';

import 'package:flutter/material.dart';

//  引入数据
import 'res/listData.dart';

//  定义入口文件·
void main(){
  //  实例化 new 可省略R
  runApp(MyApp());
}

//  自定义组件 继承无状态组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //  调用封装的组件
    return MaterialApp(
      //  主页
      home:Scaffold(
        //  导航
        appBar: AppBar(
          title:Text('Flutter Demo')
        ),
        //  主题
        body: HomeContent(),
      )
    );
  }
}

//  自定义组件文字
class HomeContent extends StatelessWidget{
  //  自定义方法 返回组件数组
  List<Widget> _getListData(){
    var tempList = listData.map((item){
      return Container(
        //  居中显示
        // alignment: Alignment.center,
        //  文本颜色
        // color:Colors.blue,
        //  设置边框
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1,
          )
        ),
        //  ListView会左右平铺
        //  Column会垂直排列
        child: Column(
          children: <Widget>[
            Image.network(item['imgsrc']),
            //  占位，撑开高度
            SizedBox(
              height: 4,
            ),
            Text(
              item['title'],
              //  文字居中
              textAlign: TextAlign.center,
              style: TextStyle(
                //  文字大小
                fontSize: 20,
              ),
            )
          ],
        ),
        // height: 400,  //  设置高度无效
      );
    });
    //  转换成数组输出
    return tempList.toList();
  }

  // 方法： 输入build + 回车
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //  网格布局的列数,水平widget的数量
      crossAxisCount: 2,
      //  内容左右间距
      crossAxisSpacing: 10.0,
      //  主轴间距，默认就是上下间距
      mainAxisSpacing: 10.0,
      //  内容内边距
      padding: EdgeInsets.all(10),
      //  宽高比例 宽度除以高度的结果
      // childAspectRatio: 0.7,
      //  填充内容
      children: this._getListData(),
    );
  }
}