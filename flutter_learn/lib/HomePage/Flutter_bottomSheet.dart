import 'package:flutter/material.dart';
class FMBottomSheetVC extends StatefulWidget{
  @override
  FMBottomSheetState createState() => FMBottomSheetState();
}

class FMBottomSheetState extends State <FMBottomSheetVC>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _scaffold(context);
  }

  Scaffold _scaffold(context){
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet"),),
      body: Center(
        child: _raisedButton(context),
      ),
      // bottomSheet: _bottomSheet(context),
      // floatingActionButton: FloatingActionButton(
      //   child: Text("返回"),
      //   onPressed: (){
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }

  BottomSheet _bottomSheet(context){
    return BottomSheet(
      onClosing: (){
        print("closed");
      },

      builder: (context){
        return Container(
          height: 300,
          color: Colors.yellow,
          alignment: Alignment.centerLeft,
          child: Text("BottomSheet In Scaffold"),
        );
      },
    );
  }

  RaisedButton _raisedButton(context){
    return RaisedButton(
      child: Text("showModalBottomSheet"),
      onPressed: (){
        showModalBottomSheet(
          context: context,
          builder: (context){
            return Container(
              width: 414,
              height: 300,
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Text("showModalBottomSheet", style: TextStyle(color: Colors.white),),
            );
          },
        );
      },
    );
  }
}