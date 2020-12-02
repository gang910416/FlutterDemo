import 'package:flutter/material.dart';

class FMSwitchVC  extends StatefulWidget{
  FMSwitch createState() => FMSwitch();
}

class FMSwitch extends State<FMSwitchVC>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch 开关"),
      ),
      body: Center(
        child: _switch(),
      ),
    );
  }
bool switchValue = true;
  Switch _switch(){
    return Switch(
        value: switchValue,
        activeColor: Colors.red,
        activeTrackColor: Colors.indigo,
        inactiveThumbColor: Colors.blueGrey,
        inactiveTrackColor: Colors.orange,
        inactiveThumbImage: AssetImage('images/pic0.jpg'),
        activeThumbImage: AssetImage('images/pic1.jpg'),
        onChanged: (value){
      switchValue = !switchValue;
      setState(() {

      });
    });
  }
}