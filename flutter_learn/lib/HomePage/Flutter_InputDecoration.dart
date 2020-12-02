import 'package:flutter/material.dart';

class FMTextFieldVC extends StatefulWidget{
  @override
  FMTextFieldState createState() => FMTextFieldState();
}

class FMTextFieldState extends State<FMTextFieldVC>{
  @override
  // textfiledd
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('文本输入框'),
      ),
      body:_focusScope(),
    );
  }
  FocusScopeNode _scopeNode = FocusScopeNode();


  ListView _listView(){
    return ListView(
      padding:  const EdgeInsets.all(30),
      children: [
        _textField(),
        _focusScope(),
      ],
    );
  }

  FocusScope _focusScope(){
    return FocusScope(
      node: _scopeNode,
      child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            _textFiled1(),
            _textFiled1(),
            _textFiled1(),
            _btnFiled(),
            _textFiled1(),
            _btnFiled(),
            _textFiled1(),
            _textFiled1(),
          ],
        ),
    );
  }

  TextField _textFiled1(){
    return TextField(
      decoration: InputDecoration(
        hintText: "请输入文本",
      ),
      onEditingComplete: (){
        _scopeNode.nextFocus();
      },
    );
  }
  Row _btnFiled(){
    return Row(
      children: [
        Expanded(child: _textFiled1(),
        ),
        RaisedButton(onPressed: (){

        },
          child: Text("我可以点击"),
        )
      ],
    );
  }

  TextField _textField(){
    return TextField(
      controller: _controller(),
      decoration: _normalDecoration(),
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.phone,
      autofocus: true,
      obscureText: true,
      obscuringCharacter: "*",
      onChanged: (string){
        print("onChanged $string");
      },
      onSubmitted: (string){
        print("onSubmitted $string");
      },
      onEditingComplete: (){
        print("onEditingComplete");
      },
      onTap: (){
        print("onTap");
      },
    );
  }
  TextEditingController _controller(){
    TextEditingController _controller = TextEditingController(
      text: "1234565",
    );
    _controller.addListener(() {
      print(_controller.text);
    });
    return _controller;
  }

  InputDecoration _normalDecoration(){
    return InputDecoration(
      filled: true,
      fillColor: Colors.lightBlue.shade100,

      prefixIcon: Icon(Icons.phone),
      prefixText: "+86 ",
      prefixStyle: TextStyle(color: Colors.orange, fontSize:  18),
      hintText: "请输入手机号",
      suffixIcon: Icon(Icons.clear),
    );
  }




}