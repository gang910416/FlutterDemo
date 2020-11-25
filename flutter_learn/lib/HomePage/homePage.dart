import 'package:flutter/material.dart';
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
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}):super(key: key);
  final String title;
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
        title: Text(widget.title,style: TextStyle(
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
  List<Widget> widgetList = [];
  // 重写父类方法，页面初始化会调用
  void initState(){
    super.initState();
    // 封装数据初始化方法，为数据源添加数据，未来也可以在这里做网络请求
    initData();
  }
  void initData(){
    funcLists.add({"name": "基础组件", "desc": "在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。"});
    funcLists.add({"name": "Material Components", "desc": "实现了Material Design 指南的视觉、效果、motion-rich的widget。"});
    funcLists.add({"name": "Cupertino(iOS风格的widget)", "desc": "用于当前iOS设计语言的美丽和高保真widget。"});
    funcLists.add({"name": "Layout", "desc": "排列其它widget的columns、rows、grids和其它的layouts。"});
    funcLists.add({"name": "Text", "desc": "文本显示和样式。"});
    funcLists.add({"name": "Assets、图片、Icons", "desc": "管理assets, 显示图片和Icon。"});
    funcLists.add({"name": "Input", "desc": "Material Components 和 Cupertino中获取用户输入的widget。"});
    funcLists.add({"name": "动画和Motion", "desc": "在您的应用中使用动画。查看Flutter中的动画总览。"});
    funcLists.add({"name": "交互模型", "desc": "响应触摸事件并将用户路由到不同的页面视图（View）。"});
    funcLists.add({"name": "样式", "desc": "管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充。"});
    funcLists.add({"name": "绘制和效果", "desc": "Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置。"});
    funcLists.add({"name": "Async", "desc": "Flutter应用的异步模型。"});
    funcLists.add({"name": "滚动", "desc": "滚动一个拥有多个子组件的父组件。"});
    funcLists.add({"name": "辅助功能", "desc": "给你的App添加辅助功能(这是一个正在进行的工作)。"});
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
                    print('${func["page"]}');
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          //这里用来跳转到其他页面
                          if (func["name"] == "基础组件"){
                            return HomeListDetail(title: "组件",);
                          }else if (func["name"] == "Text"){
                            return Fultter_Text();
                          }else if (func["name"] == "Assets、图片、Icons"){
                            return Flutter_image();
                          }else if (func["name"] == "Layout"){
                            return RowAndColum();
                          }
                        }),);


                  },
                );
              },
          ),
        ),
      ),
    );
  }
}

