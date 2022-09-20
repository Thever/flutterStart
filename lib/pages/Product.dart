//  引入必要的资源库
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  // const ProductPage({super.key});
  ProductPage({Key ? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('跳转到商品详情'),
            onPressed: () {
              //  配置了路由和参数，携带参数跳转
              Navigator.pushNamed(context, '/productinfo', arguments: {
                'pid': 123
              });
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}