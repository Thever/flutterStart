//  引入必要资源
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  //  const SearchPage({super.key});
  //  SearchPage({Key ? key}) : super(key: key);

  //  构造函数接受参数
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('搜索页面')
      ),
      //  参数不为空打印id,否则打印0
      body: Text('搜索页面内容区域获取id:${arguments != null ? arguments['id']: '无id'}'),
    );
  }
}