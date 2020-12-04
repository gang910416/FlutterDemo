import 'package:flutter/material.dart';
import 'package:flutter_learn/HomePage/homePage.dart';
import 'FMRouteManager.dart';
import 'package:flutter_learn/WeChet/FMHome.dart';
void main() {
  runApp(MyFlutter());
}

// 一个简单的程序 点击按钮 数字递增
class MyFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    FMRouterManager manager = FMRouterManager();
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter App',
      // initialRoute: '/',
      // onGenerateRoute: (setting){
      //   return manager.routeWithSetting(setting);
      // },
      // onUnknownRoute: (setting){
      //   return manager.unknowRouteWithSetting(setting);
      // },

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}