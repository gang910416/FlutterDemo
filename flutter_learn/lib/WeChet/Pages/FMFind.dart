import 'package:flutter/material.dart';

class FMFind extends StatefulWidget {
  @override
  FMFindState createState()=> FMFindState();
}

class FMFindState extends State <FMFind> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('朋友圈'),
    );
  }
}

Container _container(){
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.red,
    child: ListView(

    ),
  );
}