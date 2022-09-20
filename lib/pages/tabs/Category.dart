//  引入必要资源
import 'package:flutter/material.dart';

//  引入表单页面用于不配置路由，直接跳转
// import '../Form.dart';

class CategoryPage extends StatefulWidget {
  // const CategoryPage({super.key});
  CategoryPage({Key ? key}) : super(key: key);


  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    //  默认内容
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     RaisedButton(
    //       child: Text('跳转到表单页面并传值'),
    //       onPressed: () {
    //         //  不配置路由，直接页面跳转
    //         // Navigator.of(context).push(
    //         //   MaterialPageRoute(
    //         //     //  跳转到搜索页 
    //         //     //  builder: (context) => FormPage()
    //         //     //  相当于
    //         //     builder: (context){
    //         //       return FormPage(title:'表单页跳转传值');
    //         //     }
    //         //   )
    //         // );
    //         //  配置了路由,使用路由名进行跳转
    //         Navigator.pushNamed(context, '/form');
    //       },
    //       color: Theme.of(context).accentColor,
    //       textTheme: ButtonTextTheme.primary,
    //     ),
    //   ],
    // );

    //  顶部切换内容
    // return DefaultTabController(
    //   //  指定内容页数
    //   length: 4,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       //  背景色
    //       backgroundColor: Colors.black26,
    //       //  Row作为title内容填入
    //       title: Row(
    //         //  居中显示
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         //  指定内容
    //         children: [
    //           //  流布局组件
    //           Expanded(
    //             //  指定TabBar为内容
    //             child:TabBar(
    //               //  选中下划线颜色
    //               indicatorColor:Colors.blue,
    //               //  选中标题颜色
    //               labelColor:Colors.blue,
    //               //  没选中标题颜色
    //               unselectedLabelColor: Colors.white,
    //               indicatorSize:TabBarIndicatorSize.label,
    //               //  指定tab内容
    //               tabs: [
    //                 Tab(text: "热销"),
    //                 Tab(text: "推荐"),
    //                 Tab(text: "推荐"),
    //                 Tab(text: "推荐")
    //               ],
    //             ) ,
    //           )
    //         ],
    //       ),
          
    //     ),
    //     //  指定Tabbar选中后对应的内容
    //     body:TabBarView(
    //       children: <Widget>[
    //         ListView(
    //             children: <Widget>[
    //               ListTile(
    //                 title:Text("第一个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第一个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第一个tab")
    //               )
    //             ],
    //           ),
    //         ListView(
    //             children: <Widget>[
    //               ListTile(
    //                 title:Text("第二个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第二个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第二个tab")
    //               )
    //             ],
    //           ),
    //           ListView(
    //             children: <Widget>[
    //               ListTile(
    //                 title:Text("第3个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第3个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第3个tab")
    //               )
    //             ],
    //           ),
    //         ListView(
    //             children: <Widget>[
    //               ListTile(
    //                 title:Text("第4个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第4个tab")
    //               ),
    //               ListTile(
    //                 title:Text("第4个tab")
    //               )
    //             ],
    //           )
    //       ],
    //     )
    //   ),
    // );

    //  超出内容进行滑动
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:TabBar(
                    isScrollable:true,  //如果多个按钮的话可以滑动
                    indicatorColor:Colors.yellow,
                    labelColor:Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    indicatorSize:TabBarIndicatorSize.label ,
                    tabs: <Widget>[
                      Tab(text: "推荐0"),
                      Tab(text: "推荐1"),
                      Tab(text: "推荐2"),
                      Tab(text: "推荐3"),
                      Tab(text: "热销4"),
                      Tab(text: "推荐5"),
                      Tab(text: "推荐6"),
                      Tab(text: "推荐7")
                    ],
                ) ,
              )
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
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
              children: <Widget>[
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
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第三个tab")
                ),
                ListTile(
                  title:Text("第三个tab")
                ),                 
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第四个tab")
                ),
                ListTile(
                  title:Text("第四个tab")
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第五个tab")
                ),
                ListTile(
                  title:Text("第五个tab")
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第六个tab")
                ),
                ListTile(
                  title:Text("第六个tab")
                ),                  
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第七个tab")
                ),
                ListTile(
                  title:Text("第七个tab")
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第八个tab")
                ),
                ListTile(
                  title:Text("第八个tab")
                )
              ],
            )
          ],
        )
      ),
    );

  }
}