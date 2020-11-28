import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ButtonWidget extends StatefulWidget{
  ButtonWidget({Key key,this.title}):super(key: key);
  final String title;
  _buttonWidget createState() => _buttonWidget();
}

class _buttonWidget extends State<ButtonWidget>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text('Flutter  RaisedButton 详解'),
      ),
      body: Container(
        child: _listView() ,
      ),
    );

  }
  ListView _listView(){
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        _button(),
        _shapeColumn(),
        _statefulColumn(),
        _custosColum(),
      ],

    );
  }

  //FlatButton
  FlatButton namolFlatBtn(){


  }

  // RaisedButton
  RaisedButton _button(){
    return RaisedButton(
      color: Colors.grey,
      child: Text('Push'),
      textColor: Colors.white,
      onPressed: (){
        print('点击了跳转按钮');
      },
    );
  }

  Column _shapeColumn(){
    return Column(
      children: [
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: Text('shape button'),
        ),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Container(
            height: 100,
            width: 100,
            child: Text('Start'),
            alignment: Alignment.center,
          ),
          onPressed: (){
            print('点击了开始按钮');
          },
          shape: CircleBorder(
            side: BorderSide(
              width: 2,
              color: Colors.red,
              style: BorderStyle.solid,
              // style: BorderStyle.none,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        RaisedButton(
          onPressed: (){
            print('点击了结束按钮');
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Container(
            height: 60,
            width: 200,
            child: Text('finish'),
            alignment: Alignment.center,
          ),
          shape: StadiumBorder(
            side: BorderSide(
              width: 2,
              color: Colors.red,
              style: BorderStyle.solid,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Container(
            height: 60,
            width: 200,
            child: Text('end'),
            alignment: Alignment.center,
          ),
          onPressed: (){
            print('点击了end按钮');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              width: 2,
              color: Colors.red,
              // style: BorderStyle.solid,
              style: BorderStyle.none,
            ),
          ),
        ),
      ],
    );
  }

  var btnEnabled = true;

  //可变的按钮
  Column _statefulColumn(){
    return Column(
      children:<Widget> [
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: Text('stateful button'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        RaisedButton(
          onPressed: btnEnabled ? (){} : null,
          textColor: Colors.white,
          color: Colors.blue,
          highlightColor: Colors.yellow,
          disabledColor: Colors.grey,
          child: Text('${btnEnabled ? "我现在 enable了":"我现在 disable 了"}'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        RaisedButton(
          onPressed: () {
            // 执行该方法会刷新页面
            setState(() {
              btnEnabled = !btnEnabled;
            });
          },
          textColor: Colors.white,
          color: Colors.blue,
          highlightColor: Colors.yellow,
          child: Text('点我可以控制上边那家伙'),
        ),
      ],
    );
  }
  // 自定义按钮
  Column  _custosColum(){
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          height: 30,
          child: Text('自定义按钮'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        RaisedButton(
            onPressed: (){
                //按钮点击事件
              },
            child: Row(
              children: [
                Container(height: 80,
                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                    image: DecorationImage(
                      image: NetworkImage('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2986114791,2667770254&fm=26&gp=0.jpg'),
                    ),
                   ),
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.face,
                    color: Colors.blue,
                    size: 70,
                    ),
                    Text('主标题',style: TextStyle(
                      fontSize: 35,
                      color: Colors.red,
                    ),),
                    Text('副标题',style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),),
                  ],
                ),
    ],
            ),
              ),
      ],
    );

  }

}