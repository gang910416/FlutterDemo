
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_learn/WeChet/FMHomeManager.dart';

class FMPages extends StatefulWidget {
  @override
  FMPagesState createState()=> FMPagesState();
}

class FMPagesState extends State <FMPages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<FMPagesManager>(builder: (context, manager, child){
      return manager.pages[manager.selectedPage];
    });
  }
}