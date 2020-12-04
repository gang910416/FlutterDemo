import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_learn/HomePage/ChildPage/home.dart';
import 'package:flutter_learn/HomePage/ChildPage/friendtrip.dart';
import 'package:flutter_learn/HomePage/ChildPage/contact.dart';
import 'package:flutter_learn/HomePage/ChildPage/personCenter.dart';

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
            '/childPage/home':(context) => FMChildHomeVC(),
            '/childPage/Contact':(context) => FMChildContactVC(),
            '/childPage/friend':(context) => FMChildFriendVC(),
            '/childPage/me':(context) => FMChildMeVC(),
          },
          builder: (context){
            switch(index){
              case 0:
                return FMChildHomeVC();
              case 1:
                return FMChildContactVC();
              case 2:
                return FMChildFriendVC();
              case 3:
                return FMChildMeVC();
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