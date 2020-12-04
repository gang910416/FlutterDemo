import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_learn/WeChet/FMHomeManager.dart';
import 'package:flutter_learn/WeChet/WCTabbar.dart';
import 'Pages/FMPages.dart';
class WCHomeVC extends StatefulWidget{
  FMHomeState createState() => FMHomeState();
}

class FMHomeState extends State <WCHomeVC> {

  FMHomeManager manager = FMHomeManager();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _scaffold();
  }

  // ChangeNotifierProvider _provider(){
  //   return ChangeNotifierProvider(
  //     create: (context) => FMHomeManager(),
  //     child: _scaffold(),
  //   );
  // }

  Scaffold _scaffold(){
    return Scaffold(
      // TabBar
      bottomNavigationBar: ChangeNotifierProvider(
        create: (context)=> manager.tabBarManager,
        child: FMTabBars(),
      ),
      // body: ChangeNotifierProvider(
      //   create: (context) => manager.pageManager,
      //   child: FMPages(),
      // ),
      backgroundColor: Colors.grey,
    );
  }
}