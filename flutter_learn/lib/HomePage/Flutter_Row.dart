import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RowAndColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Row",
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
          height: 500,
          color: Colors.grey,
          child: Column(
            children: [
              _row(),
              _colum(),
            ],
          ),
        ),
      ),
    );
  }

  Row _row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.orange,
          child: Text("测试",style: TextStyle(fontSize:  10),),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
          child: Text("测试",style: TextStyle(fontSize:  20),),

        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.cyan,
          child: Text("测试",
            style: TextStyle(fontSize:  30)),
          ),
      ],
    );
  }
  //列
  Column _colum(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(
          // margin: const EdgeInsets.all(30),
          width: 80,
          height: 80,
          color: Colors.blueAccent,
          child:Image.asset('images/pic1.jpg'),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.orange,
          child: Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2986114791,2667770254&fm=26&gp=0.jpg'),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.greenAccent,
        ),
      ],
    );
  }
}
