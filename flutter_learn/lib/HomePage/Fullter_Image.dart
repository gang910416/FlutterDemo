import 'package:flutter/material.dart';

class Flutter_image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 组件之 Image、AssetImage '),
        ),
        body: Container(
          color: Colors.grey,
          child: _listView(),
        ),
      ),
    );
  }

  ListView _listView(){
    return ListView(
      padding: const EdgeInsets.all(30),
      children: [
        Text('本地图片'),
        Container(
          height:  80,
          child: _localImage(),
        ),
        Text('网络图片'),
        Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2986114791,2667770254&fm=26&gp=0.jpg'),
        Text('带展位图的网络图片'),
        FadeInImage.assetNetwork(
            placeholder: 'images/lake.jpg',
            image: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2986114791,2667770254&fm=26&gp=0.jpg',
            fit: BoxFit.fill,
        ),
      ],
    );
  }

  Row _localImage(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 60,
          height: 60,
          color: Colors.greenAccent,
          child: Image.asset('images/pic0.jpg',fit: BoxFit.fill,),
        ),
        Container(
          width: 60,
          height: 60,
          color: Colors.greenAccent,
          child: Image.asset('images/pic1.jpg',fit: BoxFit.fill,),
        ),
        Container(
          width: 60,
          height: 60,
          color: Colors.greenAccent,
          child: Image.asset('images/pic2.jpg',fit: BoxFit.fill,),
        ),
        Container(
          width: 60,
          height: 60,
          color: Colors.greenAccent,
          child: Image.asset('images/pic3.jpg',fit: BoxFit.fill,),
        ),
      ],
    );
  }
}

