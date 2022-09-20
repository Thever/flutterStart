//  引入必要的资源库
import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {

  //  定义参数
  final Map arguments;
  // const ProductInfoPage({super.key});

  //  构造函数赋值
  ProductInfoPage({Key ? key, required this.arguments }) : super(key: key);

  @override
  //  传入arguments参数
  // ignore: unnecessary_this
  State<ProductInfoPage> createState() => _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  //  定义参数
  Map arguments;

  //  构造函数赋值
  _ProductInfoPageState({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Container(
        // ignore: unnecessary_this
        child:Text('pid: ${this.arguments['pid']}')
      )
    );
  }
}