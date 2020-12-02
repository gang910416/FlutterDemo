
import 'package:flutter/material.dart';

class FMDatePicker extends StatefulWidget{

  DatePicker createState() => DatePicker();
}
class DatePicker extends State<FMDatePicker>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text("时间选择器"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _raisedButton(),
          _showTimePicker(context),
        ],
      ),
    );
  }

  RaisedButton _raisedButton(){
    return RaisedButton(
      onPressed: (){
        showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2020,6),
            lastDate: DateTime(2021,6),
          textDirection: TextDirection.ltr,
          currentDate: DateTime(2020,12,01),
          helpText: "请选择日期！",
          cancelText: "取消",
          confirmText: "确定",
          errorFormatText: "日期格式错误",
          errorInvalidText: "",
          fieldHintText: "日期",
          fieldLabelText: "内容为空", useRootNavigator: true,
          initialDatePickerMode: DatePickerMode.day,
            //设置不可选日期
          selectableDayPredicate: (dayTime){
          if(dayTime == DateTime(2020,11,30)){
            return false;
          }
          return true;
        }
        );
      },
      child: Text("选择时间"),
    );
  }

  RaisedButton _showTimePicker(context){
    return RaisedButton(
        child: Text("时间选择器 - InputMode"),
        onPressed: (){
      showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: 10, minute: 30),
        cancelText: "取消",
        confirmText: "确定",
      );
    });
  }
  DatePicker _datePicker(){
    return DatePicker(


    );
  }
}