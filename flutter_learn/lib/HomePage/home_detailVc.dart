
import 'package:flutter/material.dart';
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

class HomeListDetail extends StatefulWidget{
  final func;
  const HomeListDetail({Key key, @required this.func}) : super(key: key);

  @override
  _MyDetailVc createState() => _MyDetailVc();
}

class _MyDetailVc extends State<HomeListDetail>{
  int _count  = 0;
  void _intcanCount(){
    setState(() {
      _count ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('组件详解',style: TextStyle(
          color: Colors.white,
        ),),
        leading: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.maybePop(context);
        }),
        actions:
        [new IconButton(icon: Icon(Icons.menu), onPressed: (){
              Navigator.pop(context);
        }),
          Icon(Icons.search)],
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _flutteRoutes(),
          _segament(),
          _Socaffold(),
          _RaisedButton(),
          _textContainer(),
          _ImageAsset(),
          _RowAndCulmn(),
          Text('You have  pressed button $_count times!',style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 20,
            color: Colors.brown,
          ),
          ),
          Text('$_count',style: Theme.of(context).textTheme.headline4,),
          _container(),

        ],
      ),
      // body: Center(
      //
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('You have  pressed button $_count times!',style: TextStyle(
      //         fontWeight: FontWeight.w500,fontSize: 20,
      //         color: Colors.brown,
      //       ),),
      //       Text('$_count',style: Theme.of(context).textTheme.headline4,),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _intcanCount,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );
  }
  // 容器详解相当于View
  Container _container() {
    return Container(
      margin: const EdgeInsets.only(top: 20,left: 30,right: 20),
      // 在这里尝试 Container 属性效果
      constraints: BoxConstraints.expand(
        width: 320,
        height: 200,
      ),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border(
          top: BorderSide(
            width: 3,
            color: Colors.cyan,
          ),
          left: BorderSide(
            width: 3,
            color: Colors.blue,
          ),
          right: BorderSide(
            width: 3,
            color: Colors.black,
          ),
          bottom: BorderSide(
            width: 3,
            color: Colors.orange,
          ),
        ),
        //设置阴影
        boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(10,10))],
        //设置背景图
        image: DecorationImage(
          // image: AssetImage('images/pic1.jpeg'),
          image: NetworkImage('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
        ),
        //设置渐变色
        gradient: LinearGradient(colors: [Colors.white,Colors.blueAccent],
            begin:FractionalOffset(0,0),end: FractionalOffset(0,1),
        ),
        //设置圆角
        // borderRadius: BorderRadius.circular(30),
        // 设置每个角的圆角
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(50),
        //   bottomLeft: Radius.circular(40),
        //   bottomRight: Radius.circular(30),
        // ),
      ),
      child: Center(
        child: Column(
          children: [
            Text('123'),
            Text('123'),
            Text('123'),
            Text('123'),
          ],
        ),
      ),
    );
  }
  //Row  Clumn 详解
  Container _RowAndCulmn(){
    return Container(
      color: Colors.grey,
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Column(
          children: [
            Text('row  colum 详解',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.blueAccent,
            ),),
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return RowAndColum();
          }));
        },
      ),
    );
  }

  Container _ImageAsset(){
    return Container(
      color: Colors.black12,
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Row(
          children: [
            Text('Flutter 组件之 Image、AssetImage 详解',style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: Colors.blueAccent,
        ),)
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Flutter_image();
          }));
        },
      ),
    );
  }

  // Flutter 组件之 Text 详解
Container _textContainer(){
    return Container(
      color: Colors.black12,
      margin: const EdgeInsets.all(5),
      child: GestureDetector(
        child: Row(
          children: [
            Text('Flutter 组件之 Text 详解',
              style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ) ,),

          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Fultter_Text();
          }));
        },
      ),
    );
}
//Flutter 组件之 RaisedButton 详解
Container _RaisedButton(){
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.grey,
      child: GestureDetector(
        child: Row(
          children: [
            Text('Flutter 组件之 RaisedButton 详解',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),)
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return ButtonWidget();
          }));
        },
      ),
    );

}

Container _Socaffold(){
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.grey,
      child: GestureDetector(
        child: Row(
          children: [
            Text('Flutter 组件之 Scaffold 详解',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color:  Colors.blue,
              ),
            ),
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FlutterScaffold();
          }));

        },
      ),
    );
}
// tabbar 相当于iOS sememaget
Container _segament(){
  return Container(
    margin: const EdgeInsets.all(10),
    color: Colors.grey,
    child: GestureDetector(
      child: Row(
        children: [
          Text('Flutter 组件之 TabBar 详解',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color:  Colors.blue,
            ),
          ),
        ],
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return FMTabBarVC();
        }));

      },
    ),
  );
}

// tabbar 相当于iOS sememaget
  Container _flutteRoutes(){
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.grey,
      child: GestureDetector(
        child: Row(
          children: [
            Text('Flutter 组件之 Routes 详解',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color:  Colors.blue,
              ),
            ),
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FlutterRoutes();
          }));

        },
      ),
    );
  }

}