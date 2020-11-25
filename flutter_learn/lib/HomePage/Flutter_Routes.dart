import 'package:flutter/material.dart';

class FlutterRoutes extends StatefulWidget{
  pageA createState() => pageA();
}

// class _routes extends State<FlutterRoutes>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         body: pageA(),
//       ),
//       routes: {
//         'pageB':(context) => pageB(),
//         'pageC':(context) => pageC(),
//         'pageD':(context) => pageD(),
//       },
//     );
//   }
// }

class pageA extends State<FlutterRoutes>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text("PageA"),
        leading: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转PageB"),
          onPressed: (){
            // Navigator.pushNamed(context, 'pageB');
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return pageB();
            }));
          },
        ),
      ),
    );
  }
}


class pageB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("PageB"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转PageC"),
          onPressed: (){
            // Navigator.pushNamed(context, 'pageC');
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return pageC();
            }));
          },
        ),
      ),
    );
  }
}
class pageC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PageC"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转PageD"),
          onPressed: (){
            // Navigator.pushNamed(context, 'pageD');
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return pageD();
            }));
          },
        ),
      ),
    );
  }
}
class pageD extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PageD"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转PageA"),
          onPressed: (){
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
    );
  }
}