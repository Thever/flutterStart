//  引入必要资源
import 'package:flutter/material.dart';

//  引入搜索页用于路由跳转
import '../Search.dart';

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
            //  路由跳转
            Navigator.of(context).push(
              MaterialPageRoute(
                //  跳转到搜索页
                builder: (context) => SearchPage()
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        // SizedBox(height: 20),
        // RaisedButton(
        //   child: Text('跳转到表单页面并传值'),
        //   onPressed: () {},
        //   color: Theme.of(context).accentColor,
        //   textTheme: ButtonTextTheme.primary,
        // ),
      ],
    );
  }
}