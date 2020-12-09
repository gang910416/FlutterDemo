import 'package:flutter/material.dart';
import 'FMFindModel.dart';

class FMFindItem extends StatefulWidget{
  FMFindModel model;
  FMFindItem(this.model);
  FMFindItemState createState() => FMFindItemState();
}

class FMFindItemState extends State<FMFindItem>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: GestureDetector(
        onTap: (){

        },
        child: _container(),
      ),
    );
  }

  Container _container(){
    return Container(
      child: _row(),
      color: Colors.white,
    );
  }
  Row _row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: EdgeInsets.all(10)
        ),
        Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image(image: AssetImage('${widget.model.imageName}')),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text('${widget.model.title}',
            style: TextStyle(
              fontSize: 17,
            ),
            ),
          ],
        ),
        Expanded(child: Padding(padding: EdgeInsets.zero,)),
        SizedBox(
          width: 12,
          height: 30,
          child: Image(image: AssetImage('images/Wechet/find/find_arrow_right.png'),),
        ),
        Padding(padding: EdgeInsets.all(10)),
      ],
    );
  }
}

