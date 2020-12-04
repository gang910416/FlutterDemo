import 'package:flutter/material.dart';
import 'package:flutter_learn/HomePage/Flutter_AlertView.dart';
import 'package:flutter_learn/HomePage/Flutter_CupertinoTabr.dart';
import 'package:flutter_learn/HomePage/Flutter_DataTable.dart';
import 'package:flutter_learn/HomePage/Flutter_DatePicker.dart';
import 'package:flutter_learn/HomePage/Flutter_InputDecoration.dart';
import 'package:flutter_learn/HomePage/Flutter_Tooltip.dart';
import 'home_detailVc.dart';
import 'package:flutter_learn/HomePage/Flutter_Routes.dart';
import 'package:flutter_learn/HomePage/Flutter_Scaffold.dart';
import 'package:flutter_learn/HomePage/Flutter_Tabbar.dart';
import 'Flutter_Row.dart';
import 'Fullter_Image.dart';
import 'Flutter_Text.dart';
import 'Flutter_RaisedButton.dart';
import 'Flutter_Scaffold.dart';
import 'Flutter_Tabbar.dart';
import 'Flutter_Routes.dart';
import 'Flutter_InputDecoration.dart';
import 'package:flutter_learn/FMRouteManager.dart';
import 'Flutter_CheckBox.dart';
import 'Flutter_switch.dart';
import 'Flutter_Slider.dart';
import 'Flutter_DatePicker.dart';
import 'Flutter_AlertView.dart';
import 'Flutter_bottomSheet.dart';
import 'Flutter_Tooltip.dart';

class MyHomePage extends StatefulWidget{
  final func;
   const MyHomePage({Key key, @required this.func}):super(key: key);
  @override
  // _MyHomePageState createState() => _MyHomePageState();// 点击按钮数字+1
  _MyListViewState createState() => _MyListViewState(); //创建lixtView
}

class _MyHomePageState extends State<MyHomePage>{
  int  _count = 100;

  void _incrementeCount(){
    setState(() {
      _count --;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Fultter Demo",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have  pressed button $_count times!',style: TextStyle(
              fontWeight: FontWeight.w500,fontSize: 20,
              color: Colors.brown,
            ),),
            Text('$_count',style: Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementeCount,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );
  }
}

// 创建ListView  tableView
 
class _MyListViewState extends State<MyHomePage>{
  var funcLists = [];
  FMRouterManager manager = FMRouterManager();
  List<Widget> widgetList = [];
  // 重写父类方法，页面初始化会调用
  void initState(){
    super.initState();
    // 封装数据初始化方法，为数据源添加数据，未来也可以在这里做网络请求
    initData();
  }
  void initData(){
    funcLists.add({"name": "基础组件", "action": "/BaseWidgets/Row","desc": "在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。"});
    funcLists.add({"name": "InputDecoration 文本输入", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 InputDecoration 详解"});
    funcLists.add({"name": "CheckBox", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 CheckBox 详解"});
    funcLists.add({"name": "Layout", "action": "/BaseWidgets/Row","desc": "排列其它widget的columns、rows、grids和其它的layouts。"});
    funcLists.add({"name": "Text", "action": "/BaseWidgets/Row", "desc": "文本显示和样式。"});
    funcLists.add({"name": "Assets、图片、Icons", "action": "/BaseWidgets/Row" ,"desc": "管理assets, 显示图片和Icon。"});
    funcLists.add({"name": "switch 开关", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 Switch 详解"});
    funcLists.add({"name": "Slider 进度条", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 Slider 详解"});
    funcLists.add({"name": "DatePicker 时间选择器", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之时间日期选择器（DatePicker，TimerPicker）详解"});
    funcLists.add({"name": "弹窗", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 Dialog 弹框（Dialog，Alert）详解"});
    funcLists.add({"name": "BottomSheet", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 BottomSheet 详解"});
    funcLists.add({"name": "Tooltip", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 Tooltip 详解"});
    funcLists.add({"name": "DataTable", "action": "/BaseWidgets/Row", "desc": "Flutter 组件之 DataTable 详解"});
    funcLists.add({"name": "CupertinoTabBar", "action": "/BaseWidgets/Row", "desc": "给你的App添加辅助功能(这是一个正在进行的工作)。"});
    setState(() {
      // 调用父类方法，会刷新页面
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        //listView 的背景颜色
        backgroundColor: Colors.white,
        appBar: AppBar(
          //设置导航栏
          title: Text('首页'),
        ),
        body: Center(
          child: ListView.builder(
              padding:  const EdgeInsets.all(15.0),
              itemCount: funcLists.length ,
              itemBuilder: (context ,index){
                var func = funcLists[index];
                return ListTile(
                  contentPadding: const EdgeInsets.all(10.0),
                  title: Text("${func["name"]}",
                  style: TextStyle(
                      fontSize: 20,
                    color: Colors.black,
                  ),
                  ),
                  subtitle: Text("${func["desc"]}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  onTap:(){
                        print("${func["action"]}");
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          //这里用来跳转到其他页面
                          if (func["name"] == "基础组件"){
                            return HomeListDetail();
                          }else if (func["name"] == "Text"){
                            return Fultter_Text();
                          }else if (func["name"] == "Assets、图片、Icons"){
                            return Flutter_image();
                          }else if (func["name"] == "Layout"){
                            return RowAndColum();
                          }else if(func["name"] == "路由表封装"){
                            return FlutterRoutes();
                          }else if(func["name"] == "InputDecoration 文本输入"){
                            return FMTextFieldVC();
                          }else if(func["name"] == "CheckBox"){
                            return CheckBoxVC();
                          }else if(func["name"] == "switch 开关"){
                            return FMSwitchVC();
                          }else if(func["name"] == "Slider 进度条"){
                            return FMSiderVC();
                          }else if(func["name"] == "DatePicker 时间选择器"){
                            return FMDatePicker();
                            }else if(func["name"] == "弹窗"){
                            return FLutterAlert();
                          }else if(func["name"] == "BottomSheet" ){
                            return FMBottomSheetVC();
                          }else if(func["name"] == "Tooltip"){
                            return FMToolTipVC();
                          }else if(func["name"] == "DataTable"){
                            return FMDataTableVC();
                          }else if(func["name"] == "CupertinoTabBar"){
                            return FMCupertionTabbar();
                          }
                        },
                        ),
                      );
                  },
                );
              },
          ),
        ),
      ),
    );
  }
}

