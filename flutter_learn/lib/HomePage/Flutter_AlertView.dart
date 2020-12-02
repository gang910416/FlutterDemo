import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FLutterAlert extends StatefulWidget{
  AlertViewFunc createState() => AlertViewFunc();
}

class AlertViewFunc extends State<FLutterAlert>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog 弹框详解"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
            _showDialog(context, "Simple DiaLog", _simpleDialog(context)),
          _showDialog(context, "AlertDialog", _alertDialogNomal()),
          _showCupertionDialog(context, "CupertionAlertDialog", _cupertinoAlertDialog(context)),
        ],
      ),
    );
  }

  RaisedButton _showDialog(context,title,dialog){
    return RaisedButton(
        child: Text("$title"),
        //设置异步
        onPressed: ()async{
          var result = await showDialog(context: context,
          barrierColor: Colors.red.withAlpha(30),
            barrierDismissible: true,
            child: dialog,
          );
          print(result);
        });

  }
  SimpleDialog _simpleDialog(context){
    return SimpleDialog(
      title: Text("SimpleDialog 弹窗"),
      titlePadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
      titleTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 18,
      ),
      contentPadding: EdgeInsets.only(left: 15,right: 15),
      backgroundColor: Colors.white,
      children: [
        Container(
        child: Text("简单的弹窗"),
    alignment: Alignment.center,
    padding:  EdgeInsets.all(20),
    ),
        FlatButton(
          onPressed: (){
            // 隐藏弹框
            Navigator.pop(context, 'SimpleDialog - Normal, 我知道了!');
          },
          child: Text("确定"),
          textColor: Colors.white,
          color: Colors.blue,
        )],
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(30),
      //   side: BorderSide(
      //     color: Colors.red,
      //     width: 2,
      //   ),
      // ),

    );
  }

  AlertDialog _alertDialogNomal(){
    return AlertDialog(
      title: Text("AlertDialog _ nomal"),
      titlePadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.blue,
      ),
      contentPadding: EdgeInsets.only(left: 15,right: 15),
      contentTextStyle: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Text("简单的AlertDialog, 也可以自定义样式"),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      actionsPadding: EdgeInsets.all(15),
      //事件子控件
      actions: [

        FlatButton(onPressed: (){
          Navigator.pop(context,'');
        }, child: Text("取消")),
        FlatButton(onPressed: (){
          Navigator.pop(context,'');
        }, child: Text("确定")),

      ],
      // shape 形状
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.red,
          width: 1,
        ),
      ),
    );
  }

RaisedButton _showCupertionDialog(context ,title ,dialog){
    return RaisedButton(
      onPressed: () async{
      var result  = await showCupertinoDialog(
          context: context, 
          builder: (context){
            return dialog;
          });
      },
      child: Text("$title"),
      
    );
}

CupertinoAlertDialog _cupertinoAlertDialog(context){
    return CupertinoAlertDialog(
      title: Text("CupertionAlertDialog - Nomal"),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Text("这是简单的CupertionAlertDialog ,也可以自定义"),
          ],
        ),
      ),
      actions: [
        FlatButton(onPressed: (){
          Navigator.pop(context, 'CupertinoAlertDialog - Normal, 取消');
        },
            child: Text("取消")),
        FlatButton(onPressed: (){
          Navigator.pop(context, 'CupertinoAlertDialog - Normal, 确定');
        },
            child: Text("确定")),

      ],
    );
}
}