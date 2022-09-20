import 'package:flutter/material.dart';

//  引入三方库
import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key ? key}) : super(key: key);

  _DatePickerDemoState createState() => _DatePickerDemoState();
}
class _DatePickerDemoState extends State<DatePickerDemo> {

  DateTime _nowDate =DateTime.now();

  var _nowTime=TimeOfDay(hour: 12,minute:20 );
  
  //  自带时间组件
  _showDatePicker() async{
      //  默认同步方法
      // showDatePicker(
      //   //  上下文
      //   context:context,
      //   //  初始化日期
      //   initialDate:_nowDate,
      //   //  日期开始
      //   firstDate:DateTime(1980),
      //   //  日期结束
      //   lastDate:DateTime(2100),
      // ).then((result){
      //   print(result);
      // });

      //  异步方法调用，赋值给result
      var result= await showDatePicker(
        context:context,
        initialDate:_nowDate,
        firstDate:DateTime(1980),
        lastDate:DateTime(2100),
        // locale: Locale('zh'),  //  已全局配置中文
      );
      //  print(result);
      setState(() {
        // ignore: unnecessary_this
        this._nowDate= result!;
      });

  }

  _showTimePicker() async{
    //  捕获时间设置
    var result= await showTimePicker(
      context:context,
      initialTime: _nowTime
    );
    //  更改状态
    setState(() {
      // ignore: unnecessary_this
      this._nowTime= result!;
    });
  }

  @override
  void initState() {
    super.initState();
    var now =DateTime.now();
    //  初始化打印相关信息
    print(now);  //打印日期
    print(now.millisecondsSinceEpoch);  //打印时间戳
    print(DateTime.fromMillisecondsSinceEpoch(1663305133653));  // 时间戳转换为日期
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));    //三方库，日期转换为固定格式
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //  选择日期
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日'])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
              //  选择时间
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showTimePicker,
              )
            ],
          )
        ],
      ),      
    );
  }
}