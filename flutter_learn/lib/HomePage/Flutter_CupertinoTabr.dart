import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_learn/WeChet/Pages/FMChat.dart';
import 'package:flutter_learn/WeChet/Pages/FMFind.dart';
import 'package:flutter_learn/WeChet/Pages/FMMine.dart';
import 'package:flutter_learn/WeChet/Pages/FMMail.dart';

class FMCupertionTabbar extends StatefulWidget{
  CupertionTabbar createState() => CupertionTabbar();
}

class CupertionTabbar extends State<FMCupertionTabbar>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: _cupertionTabbar(),//选项卡
      controller: CupertinoTabController(
        //控制器，控制器中选项卡
        initialIndex: 2,
      ),
      backgroundColor: Colors.black12,
      tabBuilder: (context,index){
        return CupertinoTabView(
          routes: {
            '/childPage/home':(context) => FMChat(),
            '/childPage/Contact':(context) => FMMailList(),
            '/childPage/friend':(context) => FMFind(),
            '/childPage/me':(context) => FMMine(),
          },
          builder: (context){
            switch(index){
              case 0:
                return FMChat();
              case 1:
                return FMMailList();
              case 2:
                return FMMailList();
              case 3:
                return FMMine();
              default :
                return Container();
            }
          },
        );
      },
    );
  }
}

CupertinoTabBar _cupertionTabbar(){
  return CupertinoTabBar(

      onTap: (index){

      },
      backgroundColor: Colors.white30,
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,//图标为选中颜色
      iconSize: 30,//图标大小
      border: Border(
        top: BorderSide(
          width: 1,
          color: Colors.grey,
        ),
      ),
    items: [
      _bottomNavigationBarItem(Icons.home_outlined,Icons.home, "首页"),
      _bottomNavigationBarItem(Icons.contact_page_outlined,Icons.contact_page_rounded, "通讯录"),
      _bottomNavigationBarItem(Icons.face_unlock_outlined,Icons.face_retouching_natural, "朋友圈"),
      _bottomNavigationBarItem(Icons.person_outline,Icons.person, "我的"),
    ],
  );
}

BottomNavigationBarItem _bottomNavigationBarItem(IconData nomalIcon,IconData actionIcon,String title ){
  return BottomNavigationBarItem(
    icon: Icon(nomalIcon),
    activeIcon: Icon(actionIcon),
    title: Text('$title',style: TextStyle(
      fontSize: 13
    ),),
    backgroundColor: Colors.yellow,
  );
}