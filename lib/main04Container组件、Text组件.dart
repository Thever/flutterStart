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
import 'package:flutter/material.dart';

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
  //  快捷方法： 输入build + 回车
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        //  设置子元素
        child:Text(
          // 文字内容
          '我是一个文本123我是一个文本123我是一个文本123我是一个文本123我是一个文本123我是一个文本123我是一个文本123我是一个文本123我是一个文本123我是一个文本123',
          // 文本对齐方式 left center right
          textAlign:TextAlign.center,
          //  最大行数
          maxLines: 2,
          //  文本超出处理方式 ellipsis 省略号 clip裁剪 fade渐隐
          overflow:TextOverflow.ellipsis,
          //  字体缩放倍率
          textScaleFactor: 1.8,
          // 文本样式
          style:TextStyle(
            //  字体大小
            fontSize: 16.0,
            //  字体颜色
            // color:Color.fromRGBO(1, 2, 3, 0.8),
            color:Colors.red,
            //  字体粗细  8倍粗细
            fontWeight: FontWeight.w800,
            //  字体是否倾斜  normal不倾斜 italic倾斜
            fontStyle: FontStyle.italic,
            //  文字装饰线 none没有线, lineThrough删除先， overline上划线， underline下划线
            decoration: TextDecoration.lineThrough,
            //  设置文字装饰线颜色
            decorationColor: Color.fromARGB(255, 255, 255, 1),
            //  文字装饰性样式 solid  double dotted dashed wavy
            decorationStyle: TextDecorationStyle.dotted,
            //  文字间距
            wordSpacing: 1.0,
          )
        ),
        //  宽度
        width:300.0,
        //  高度
        height:300.0,
        //  边框设置
        decoration: BoxDecoration(
          color:Colors.yellow,
          border: Border.all(
            color:Colors.blue,
            width: 2.0
          ),
          //  圆角
          borderRadius: BorderRadius.all(
            // Radius.circular(150)  // 圆形
            Radius.circular(8)
          )
        ),
        //  外边距
        //  相同边距
        // margin:EdgeInsets.all(10),
        //  不同边距
        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
        //  内边距
        //  相同边距
        // padding: EdgeInsets.all(20),
        //  不同边距
        padding:EdgeInsets.fromLTRB(10, 20, 30, 0),
        //  变化 x轴位移100
        // transform: Matrix4.translationValues(100, 0, 0)
        //  按Z轴来旋转
        // transform: Matrix4.rotationZ(0.3),
        //  斜切
        // transform: Matrix4.skew(0.0, 0.0),
        //  数字缩放 x,y,z
        // transform: Matrix4.diagonal3Values(1.2, 1, 1),
        //  内容位于底部居中
        alignment: Alignment.bottomLeft,
      )
    );
  }
}