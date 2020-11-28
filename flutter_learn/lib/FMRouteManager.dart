
import 'package:flutter/material.dart';
import 'package:flutter_learn/HomePage/homePage.dart';
import 'package:flutter_learn/HomePage/Flutter_Row.dart';
class FMRouterManager{

  //  路由总表
  Map <String, WidgetBuilder> _routeMap = {};
  // 拦截参数，用来拦截路由表，进行不同操作
  final _isLogin = true;
  final _otherJudge = true;
  FMRouteManager(){
    _routeMap.addAll(mapForHome());
    _routeMap.addAll(mapForBaseWidgets());
  }
  //自定义路由
  MaterialPageRoute routeWithSetting(RouteSettings setting){
    // 拦截未登录路由
    if (!_isLogin) {
      return loginRoute(setting);
    }
    // 拦截其他情况路由
    if (!_otherJudge) {
      return ohterRoute(setting);
    }

    WidgetBuilder builder = _routeMap[setting.name];
    if(builder != null){
      return MaterialPageRoute(builder: builder);
    }
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
// 登录路由
  MaterialPageRoute loginRoute(RouteSettings setting){
    // 这里可以替换为自定义的 Login 页面
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  // 拦截其他情况路由
  MaterialPageRoute ohterRoute(RouteSettings setting){
    // 这里可以替换为自定义的 Login 页面
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  //未知路由
  MaterialPageRoute unknowRouteWithSetting(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  // 首页表
  Map <String, WidgetBuilder> mapForHome(){
    return {
      "/": (BuildContext context) => MyHomePage(),
    };
  }
// MaterialComponents 表
  Map <String ,WidgetBuilder>mapForBaseWidgets(){
    return{
      "/BaseWidgets/Row":(BuildContext context) =>RowAndColum(),
    };
  }
}