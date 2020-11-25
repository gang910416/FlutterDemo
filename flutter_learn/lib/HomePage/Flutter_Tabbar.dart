import 'package:flutter/material.dart';

class FMTabBarVC extends StatefulWidget {
  @override
  FMTabBarState createState() => FMTabBarState();
}

class FMTabBarState extends State<FMTabBarVC> {
  var pageDatas = [];
TabController controller;
  @override
  void initState(){
    super.initState();

    initData();
    controller  = TabController(length: pageDatas.length, vsync: ScrollableState());
  }

  void initData(){
    pageDatas.add({"title":"一年级英语", "content":["我是一年级英语一班", "我是一年级英语二班","我是一年级英语三班"]});
    pageDatas.add({"title":"二年级英语", "content":["我是二年级英语一班", "我是二年级英语二班","我是二年级英语三班"]});
    pageDatas.add({"title":"三年级英语", "content":["我是三年级英语一班", "我是三年级英语二班","我是三年级英语三班"]});
    pageDatas.add({"title":"四年级英语", "content":["我是四年级英语一班", "我是四年级英语二班","我是四年级英语三班"]});
    pageDatas.add({"title":"五年级英语", "content":["我是五年级英语一班", "我是五年级英语二班","我是五年级英语三班"]});

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: pageDatas.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: _tabBar(),
        ),
        body:_tabBarView(),
      ),
    );
  }
//创建title
  TabBar _tabBar(){
    return TabBar(
      tabs: _tabs(),
      isScrollable: true,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
            color: Colors.red,
            width: 3
        ),
      ),// 自定义下划线
      // indicatorColor: Colors.deepOrange,//下划线的颜色
      // indicatorWeight: 2,//下划线的厚度
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.only(bottom: 5),//使用 indicatorPadding 修改 indicator 的位置。
      labelColor: Colors.red,//选中文字的颜色
      labelStyle: TextStyle(
        fontSize: 18,
      ),
      unselectedLabelColor: Colors.white,//未选中的文字的颜色
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
      ),//未选中的文字的大小
        controller:controller,
      onTap: (index){
        print("点击了 index = $index");
      },
    );
  }

  List <Widget> _tabs(){
    List <Widget> tabList = [];
    pageDatas.forEach((page) {
      tabList.add(
        Tab(text: page["title"],),
      );
    });
    return tabList;
  }

  //创建tabarView
  TabBarView _tabBarView(){
    return TabBarView(
      children: _tabViews(),
      controller: controller,
    );
  }

  List <Widget> _tabViews(){
    List <Widget> tabViewList = [];
    pageDatas.forEach((page) {
      var contents = page["content"];
      tabViewList.add(
        ListView(
          children: _listViewChildren(contents),
        ),
      );
    });
    print(tabViewList);
    return tabViewList;
  }

  List <Widget> _listViewChildren(List contents){
    List <Widget> children = [];
    contents.forEach((content) {
      children.add(
          ListTile(title: Text("${content}"),)
      );
    });
    return children;
  }
}