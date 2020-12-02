import 'package:flutter/material.dart';

class CheckBoxVC extends StatefulWidget{
  FMCheckBoxState createState() => FMCheckBoxState();
}

class FMCheckBoxState extends State <CheckBoxVC>{

  List <FMCheckBoxModel> _datas = [];
  List <FMRadioBoxModel> _radioList = [];
  String titleText = "";
  int grounpValue = 1;
  bool isRadio = true;
  int itemCount = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  void initData(){
    if(isRadio){
      _radioList.add(FMRadioBoxModel(1, "游戏"));
      _radioList.add(FMRadioBoxModel(2, "社交"));
      _radioList.add(FMRadioBoxModel(3, "购物"));
      _radioList.add(FMRadioBoxModel(4, "娱乐"));
      _radioList.add(FMRadioBoxModel(5, "影视"));
      titleText = "Radio";
      itemCount = _radioList.length;
    }else{
      _datas.add(FMCheckBoxModel(false, "游戏"));
      _datas.add(FMCheckBoxModel(false, "社交"));
      _datas.add(FMCheckBoxModel(false, "购物"));
      _datas.add(FMCheckBoxModel(false, "娱乐"));
      _datas.add(FMCheckBoxModel(false, "影视"));
      titleText = "CheckBox";
      itemCount = _datas.length;
    }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      // body: Center(
      //   child: _colorfulCheckBox(),
      // ),
      body: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index){
            print("sss");
            if(isRadio){
              FMRadioBoxModel model = _radioList[index];
              return _buildRadio(model);
            }else{
              FMCheckBoxModel model = _datas[index];
              return _buildRow(model);
            }
          }
      ),
      bottomSheet: _bottomSheet(),
    );
  }

  BottomSheet _bottomSheet(){
    return BottomSheet(
      onClosing: (){},
      builder: (BuildContext context){
        return Container(
          height: 60,
          color: Colors.cyan,
          child: Text(_selectedBoxs()),
          alignment: Alignment.center,
        );
      },
    );
  }

  String _selectedBoxs(){
    String string = "";
    if(isRadio){
      _radioList.forEach((FMRadioBoxModel model) {
        if(model.index == grounpValue) {
          string = string + "${model.text}";
          print("您选择的是"+"${string}");
        }
      });
    }else{
      _datas.forEach((FMCheckBoxModel model) {
        if (model.selected) {
          string = string + "${model.text} ";
        }
      });
    }
    return string;
  }

  Row _buildRadio(FMRadioBoxModel model){
    return Row(
      children: [
        _radio(model),
      Text("${model.text}")
      ],
    );
  }

  Row _buildRow(FMCheckBoxModel model){
    return Row(
      children: [
        _checkbox(model),
        Text("${model.text}"),
      ],
    );
  }
Radio _radio(FMRadioBoxModel model){
    return Radio(
      value: model.index,
      groupValue: grounpValue,
      onChanged:(index){
        grounpValue = index;
        print("${index}");
        setState(() {
        });
      }
    );
}

  Checkbox _checkbox(FMCheckBoxModel model){
    return Checkbox(
        value: model.selected,
        onChanged: (value){
          model.selected = !model.selected;
          setState(() {
          });
        }
    );
  }

  bool checkboxSelected = true;

  Checkbox _colorfulCheckBox(){
    return Checkbox(
        value: checkboxSelected,
        tristate: true,
        activeColor: Colors.red,
        checkColor: Colors.black,
        hoverColor: Colors.pink,
        focusColor: Colors.yellow,
        // visualDensity: VisualDensity(horizontal: 3, vertical: -3),
        onChanged: (value){
          checkboxSelected = !checkboxSelected;
          setState(() {
          });
        }
    );
  }
}

class FMCheckBoxModel extends Object {

  bool selected;
  String text;

  FMCheckBoxModel(this.selected, this.text);
}

class FMRadioBoxModel extends Object{
  int index;
  String text;
  FMRadioBoxModel(this.index,this.text);
}