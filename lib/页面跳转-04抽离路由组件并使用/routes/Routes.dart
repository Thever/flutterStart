//  抽离路由配置文件

//  引入必要的资源库
import 'package:flutter/material.dart';

//  需要使用的相关组件
import '../pages/tabs/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';

//  配置路由
final routes = {
  //  配置根路由
  '/':(context) => Tabs(), 
  '/form':(context) => FormPage(), 
  //  配置可选参数,让参数对应可选参数参数
  '/search':(context, {arguments}) => SearchPage(arguments:arguments), 
};

// 命名路由传值，固定写法
var onGenerateRoute = (RouteSettings settings) {
  //  统一处理
  //  获取路由名
  // final String name = settings.name;
  final String? name = settings.name;
  //  获取路由值
  // final Function pageContentBuilder = routes[name];
  final Function pageContentBuilder = routes[name] as Function;
  //  路由值不为空
  // ignore: unnecessary_null_comparison
  if (pageContentBuilder != null) {
    //  路由名参数也不为空
    if (settings.arguments != null) {
      //  进行传参处理
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context,
              arguments: settings.arguments));
      return route;
    } else {
      //  参数为空，直接跳转
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};