import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMChildContactVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("通讯录"),
      ),
      child: Center(),
    );
  }
}