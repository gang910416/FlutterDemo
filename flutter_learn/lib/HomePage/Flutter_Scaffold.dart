import 'package:flutter/material.dart';

class FlutterScaffold  extends StatefulWidget{
  FlutterScaffold({Key key,this.title}):super(key: key);
  final String title;
  _scaffold createState() => _scaffold();
}

class _scaffold extends State<FlutterScaffold>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text('Flutter 组件之 Scaffold 详解'),
        centerTitle: false,
        brightness: Brightness.dark,
        actions: _actions(),
      ),
      body: _listView(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // persistentFooterButtons: _buttons(),
      // drawer: Drawer(),//左边菜单栏
      endDrawer: rightMenu(),//右边菜单栏
      bottomNavigationBar: _bottomNavigationBar(),//tababr
      // bottomSheet: _bottomSheet(),//固定在底部的控件
    );

  }

  // 导航栏右边的按钮组
  List<Widget> _actions(){
    return [
      Container(
        width: 30,
        color: Colors.blue,
        child: GestureDetector(
          onTap: (){
            print('搜索');
          },
          child: Icon(Icons.search)
        ),
      ),
      Container(
        width: 30,
        color: Colors.blue,
        child: Icon(Icons.sanitizer),
      ),
    ];
  }
ListView _listView(){
    return ListView(
      children: [

      ],
    );
}
  Container _container(){
    return Container();
  }

 //persistentFooterButtons  显示在底部导航条上方的一组按钮
List<Widget> _buttons(){
  return[
    Container(
      width: 70,
      height: 70,
      child: Image.asset('images/pic1.jpg'),
      color: Colors.blue,
    ),
    Container(
      width: 70,
      height: 70,
      color: Colors.green,
    ),
    Container(
      width: 70,
      height: 70,
      color: Colors.cyan,
    ),
  ];
}
  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      child: Text('返回'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
  TextStyle textStyle(){
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );
  }
  Drawer rightMenu(){
    return Drawer(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          children: [
              Text('我的订单',style:textStyle(),
                textAlign: TextAlign.start,
              ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text('我的收藏',style:textStyle()),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text('我的订单',style:textStyle()),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text('我的收藏',style:textStyle()),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text('我的订单',style:textStyle()),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text('我的收藏',style:textStyle()),

          ],
        ),
      ),
    );
  }

  var _selectedIndex = 0;
  // tabbar
  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
              Icons.home
          ),
          title: Text('home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.favorite
          ),
          title: Text('favorite'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.accessible
          ),
          title: Text('accessible'),
        ),
      ],
      onTap: (int index){
        _selectedIndex = index;
        print("选中 index = ${index}");
        setState(() {

        });
      },
      currentIndex: _selectedIndex,
      backgroundColor:Colors.white,
      selectedFontSize:18,//选中时的文字大小
      iconSize: 30,//使用 iconSize 改变图标大小
      selectedLabelStyle: TextStyle(
        color: Colors.yellow,
        fontSize: 14,
      ),
      fixedColor: Colors.red,
      unselectedItemColor: Colors.grey, //使用 fixedColor 改变按钮选中时填充色，unselectedItemColor 改变未选中时的填充色。
      // showSelectedLabels: true,//使用 showSelectedLabels 设置选中时是否显示 title，默认为 true。
      // showUnselectedLabels: false, //使用 showUnselectedLabels 设置选中时是否显示 title，默认为 true。
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),//使用 selectedIconTheme 设置选中时 icon 主题。

      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),//使用 unselectedIconTheme 设置选中时 icon 主题。
    );
  }

  //显示在底部的控件 tabbar上
BottomSheet _bottomSheet(){
    return BottomSheet(onClosing: (){}, builder: (BuildContext context){
      return Container(
        height: 60,
        color: Colors.blue,
        child: Text('提交订单'),
        alignment: Alignment.center,
      );
    });
}
}