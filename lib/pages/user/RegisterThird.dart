// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

//  引入tab页
import '../tabs/Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册")
      ),body:Column(
        children: [
          SizedBox(height: 40),
          Text("输入密码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              // 都使用替换路由可直接返回上一页,就可以返回到根目录
              // Navigator.of(context).pop();

              //  都使用替换路由有个上层页面，返回根目录
              Navigator.of(context).pushAndRemoveUntil(
                //  参数1,将页面到tab页，并传入值
                //  注意这里需要引入tab页
                // new MaterialPageRoute(builder: (context) => new Tabs()), 
                new MaterialPageRoute(builder: (context) => new Tabs(index:1)), 
                //  参数2,将上层路由导航设置为空
                (route) => route == null
              );
            },
          )
        ],
      )
    );
  }
}