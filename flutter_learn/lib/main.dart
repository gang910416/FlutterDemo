import 'package:flutter/material.dart';
import 'package:flutter_learn/HomePage/homePage.dart';

void main() {
  runApp(MyFlutter());
}

// 一个简单的程序 点击按钮 数字递增
class MyFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '首页'),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}