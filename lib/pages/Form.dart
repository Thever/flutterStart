//  引入必要资源
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  // const name({super.key});
  // FormPage({Key ? key}) : super(key: key);

  //  定义参数内容
  String title;

  //  构造函数传入参数赋值
  FormPage({this.title = '默认表单信息'});

  // FormPage(String title){
  //   this.title = title;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          //  返回上一层
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        //  使用传入的参数
        title: Text(this.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
        ],
      ),
    );
  }
}