import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMChildMeVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("个人中心"),
      ),
      child: Center(),
    );
  }
}