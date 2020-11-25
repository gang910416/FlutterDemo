import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class Fultter_Text extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Container(

        child: Scaffold(
          appBar:  AppBar(
            title: Text('Flutter 组件之 Text 详解'),
          ),
          body: Container(
            child: _listView(),
          ),
        ),
      );
  }

  ListView _listView(){
  return ListView(
    children: [
      _richText(),
      _nomalText(),
    ],
  );
  }
  Text _nomalText(){
    return Text('Noamel Text ',softWrap: true,
    textAlign: TextAlign.start,
    style: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize:  40,
      shadows: [BoxShadow(color: Colors.grey,offset: Offset(5,5))],
      color: Colors.red,
      decoration: TextDecoration.underline,
      decorationColor: Colors.green,
      decorationStyle: TextDecorationStyle.double,
    ),

    );
  }

  //富文本
  Text _richText(){
    return Text.rich(
      TextSpan(
        text: "You Are My prety sunShine  ",
        style: TextStyle(
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: "YYWorld",
            style: TextStyle(
                fontSize: 20,
                color: Colors.blue,

            ),
            recognizer: TapGestureRecognizer()
              ..onTap = (){
                print("点击了");
              }
            ,
          ),
          TextSpan(
            text: " one more time",
          ),
        ],
      ),
    );
  }
}