import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key ? key}) : super(key: key);
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  //  性别
  int sex=1;
  //  开关开始状态
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            //  简单选中
            Row(
              children: <Widget>[
                Text("男:"),
                Radio(
                  //  单选值
                  value:1,
                  //  改变是触发
                  onChanged: (v){
                    setState(() {
                      // ignore: unnecessary_this
                      this.sex=1;
                    });
                  },
                  //  选中的颜色，背景颜色
                  activeColor:Colors.pink,
                  //  选择组的值
                  groupValue:this.sex ,
                ),
                SizedBox(width: 20),
                Text("女:"),
                Radio(
                  value:2,
                  onChanged: (v){
                    setState(() {
                      // ignore: unnecessary_this
                      this.sex=2;
                    });
                  },
                  groupValue:this.sex ,
                )
              ],
            ),
            Row(
              children: <Widget>[
                //  根据内容展示
                Text("${this.sex}"),
                Text(this.sex==1?"男":"女")
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 40),
            RadioListTile(
                //  对应值
                value:1,
                //  改变时触发
                onChanged: (v){
                  setState(() {
                      // ignore: unnecessary_this
                      this.sex=1;
                  });
                },
                //  对应的选择组的值
                groupValue:this.sex ,
                //  一级标题
                title: Text("一级标题男"),
                //  二级标题
                subtitle:Text("这是二级标题"),
                //  右侧图片或文字
                secondary:Icon(Icons.help),
                //  选中条件
                selected: this.sex==1,
            ),
            RadioListTile(
                value:2,
                onChanged: (v){
                  setState(() {
                      this.sex=2;
                  });
                },
                groupValue:this.sex ,
                title: Text("一级标题女"),
                subtitle:Text("这是二级标题") ,
                secondary:Image.network('https://www.itying.com/images/flutter/1.png'),
                selected: this.sex==2,
            ),
            SizedBox(height: 40),
            Switch(
              //  对应的值
              value: this.flag,
              //  变更状态回调
              onChanged: (v){
                setState(() {
                  print(v);
                  this.flag=v;
                });
              },
              //  选中时的颜色、背景颜色
              activeColor: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
