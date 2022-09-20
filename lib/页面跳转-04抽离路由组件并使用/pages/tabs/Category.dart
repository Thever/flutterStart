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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('跳转到表单页面并传值'),
          onPressed: () {
            //  不配置路由，直接页面跳转
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     //  跳转到搜索页 
            //     //  builder: (context) => FormPage()
            //     //  相当于
            //     builder: (context){
            //       return FormPage(title:'表单页跳转传值');
            //     }
            //   )
            // );
            //  配置了路由,使用路由名进行跳转
            Navigator.pushNamed(context, '/form');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}