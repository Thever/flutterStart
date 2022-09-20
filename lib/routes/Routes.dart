//  抽离路由配置文件

//  引入必要的资源库
import 'package:flutter/material.dart';

//  需要使用的相关组件
import '../pages/tabs/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';

import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';

import '../pages/User.dart';
import '../pages/Button.dart';

import '../pages/TextField.dart';
import '../pages/CheckBox.dart';
import '../pages/Radio.dart';

import '../pages/DatePicker.dart';

import '../pages/Dialog.dart';

//  配置路由，路由名可以使用大写字母
final routes = {
  //  配置根路由
  '/':(context) => Tabs(), 
  //  表单页
  '/form':(context) => FormPage(),
  //  搜索页 
  //  配置可选参数,让参数对应可选参数参数
  '/search':(context, {arguments}) => SearchPage(arguments:arguments), 
  //  商品页
  '/product':(context) => ProductPage(), 
  //  商品详情页
  '/productinfo':(context, {arguments}) => ProductInfoPage(arguments:arguments), 
  //  user
  //  登录页
  '/login':(context) => LoginPage(),
  //  注册页-步骤一
  '/registerfirst':(context) => RegisterFirstPage(),
  //  注册页-步骤二
  '/registersecond':(context) => RegisterSecondPage(),
  //  注册页-步骤二
  '/registerthird':(context) => RegisterThirdPage(),
  //  自定义顶部
  '/appBarDemo':(context) => AppBarDemoPage(),
  //  自定义tabbar
  '/tabbarcontroller':(context) => TabBarControllerPage(),
  //  user页面
  '/user':(context) => UserPage(),
  //  button页面
  '/buttondemo':(context) => ButtonDemoPage(),
  // 表单页
  '/textfield':(context) => TextFieldDemoPage(),
  // 复选框
  '/checkbox':(context) => CheckBoxDemo(),
  // 单选框
  '/radio':(context) => RadioDemo(),
  // 日期和时间戳
  '/datepicker':(context) => DatePickerDemo(),
  // 对话框 
  '/dialog':(context) => DialogPage(),
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