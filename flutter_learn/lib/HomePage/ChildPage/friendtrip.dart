import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMChildFriendVC extends StatefulWidget{

  FMChildFriend createState() => FMChildFriend();
}

class FMChildFriend extends State<FMChildFriendVC>{
  List <Widget> _slivers = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("朋友圈1"),
      ),

    );
  }
}
