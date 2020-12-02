import 'package:flutter/material.dart';

class FMSiderVC extends StatefulWidget{
  FMSider createState() => FMSider();
}

class FMSider extends State<FMSiderVC>{
double sliderValue = 100;
double sliderEndValue = 300;
String sliderText = "还没操作";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text("Sider 进度条详解"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30)),
            _slider(),
            Text(sliderText),

          ],
        ),
      ),
    );
  }
  Slider _slider(){
    return Slider(value: sliderValue ,
        max: 100,
        label: "气泡 $sliderText",
        divisions: 100,
        inactiveColor: Colors.grey,
        activeColor: Colors.green,

        onChanged: (value){
          updateSlider(value, " $value");
        },
      onChangeStart: (value){
        print("onChangeStart : $value");
        updateSlider(value, " $value");
      },
      onChangeEnd: (value){
        print("onChangeEnd : $value");
        updateSlider(value, " $value");
      },

    );
  }
  void updateSlider(value ,text){
    sliderValue = value;
    sliderText = text;
    setState(() {

    });
  }

}