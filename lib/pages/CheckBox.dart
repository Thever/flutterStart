import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key ? key}) : super(key: key);

  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  //  是否选中
  var flag=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("checkbox"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: <Widget>[
              Checkbox(
                //  是否选中
                // ignore: unnecessary_this
                value: this.flag,
                //  值变化
                onChanged: (v){
                  setState(() {
                    // ignore: unnecessary_this
                    this.flag= v!;
                  });
                },
                //  选中的背景色
                activeColor: Colors.red,
              )
            ]),
            Row(
              children: <Widget>[
                Text(this.flag?"选中":"未选中")
              ],
            ),
            SizedBox(height: 40),
            // CheckboxListTile(
            //    value: this.flag,
            //     onChanged: (v){
            //       setState(() {
            //          this.flag=v;
            //       });
            //     },
            //     title: Text("标题"),
            //     subtitle:Text("这是二级标题") ,
            // ),
            Divider(),
            CheckboxListTile(
              // ignore: unnecessary_this
              value: this.flag,
                onChanged: (v){
                  setState(() {
                    // ignore: unnecessary_this
                    this.flag=v!;
                  });
                },
                //  标题
                title: Text("标题"),
                //  二级标题
                subtitle:Text("这是二级标题") ,
                //  配置图标或图片
                secondary:Icon(Icons.help),
                //  选中的时候文字颜色是否跟着改变
                selected: true,
            )
          ],
        ),
    );
  }
}
