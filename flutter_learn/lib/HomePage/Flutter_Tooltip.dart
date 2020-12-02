import 'package:flutter/material.dart';

class FMToolTipVC extends StatefulWidget{
  ToolTips createState() => ToolTips();
}

class  ToolTips extends State<FMToolTipVC>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip 详解"),
      ),
      body: _listView(),
    );
  }
  ListView _listView(){
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        _tooltip(),
      ],
    );
  }
    Tooltip _tooltip(){
      return Tooltip(
          message: "Tooltip 是一个提示控件，用 Tooltip 包裹的控件，长按可以弹出 Tooltip 提示的 message。",
        height: 30,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        verticalOffset: 100,//距离child中心点竖直方向偏移量
        preferBelow: false,// 设置为false 会展示在child上
        excludeFromSemantics: false,//是否使用语义标签
        waitDuration: Duration(seconds: 0),//指针悬停多久展示
        showDuration: Duration(seconds: 10),//展示的时长
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        child: Text("展示",textAlign: TextAlign.center),
        decoration: _decoration(),//装饰
      );
  }

  BoxDecoration _decoration(){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
        color: Colors.red,
        width: 2,
      ),
      image: DecorationImage(
        image: AssetImage("images/pic4.jpg"),
      ),
      boxShadow: [BoxShadow(color: Colors.orange,offset: Offset(10,10))],
      //渐变色
      gradient: LinearGradient(colors: [Colors.white , Colors.yellow],begin: FractionalOffset(0,0),end: FractionalOffset(0,1)),
    );
  }

}

