//  引入必要资源
import 'package:flutter/material.dart';

//  引入搜索页用于不配置路由直接跳转
// import '../Search.dart';

//  引入自定义Dialog
import '../../components/MyDialog.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});

  HomePage({Key ? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: () {
            //  普通路由跳转
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     //  跳转到搜索页
            //     builder: (context) => SearchPage()
            //   )
            // );
            //  配置了路由,使用路由名进行跳转
            // Navigator.pushNamed(context, '/search');
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/search', arguments: {
              'id':123
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到商品页面'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/product');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到自定义AppBar'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/appBarDemo');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到tabbarcontroller'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/tabbarcontroller');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到buttonDemo'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/buttondemo');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到TextField表单页'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/textfield');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到CheckBox'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/checkbox');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到Radio'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/radio');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到datepick'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/datepicker');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('跳转到dialog'),
          onPressed: () {
            //  配置了路由和参数，携带参数跳转
            Navigator.pushNamed(context, '/dialog');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('显示自定义Dialog'),
          onPressed: (){
              // print("显示自定义组件");
              showDialog(
                context: context,
                builder: (context){
                  return MyDialog(
                    title:"关于我们",
                    content:"关于我们"
                  );
                }
              );
          },
        )   
      ],
    );
  }
}