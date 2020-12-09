import 'package:flutter/material.dart';

class FMFindModel{
  String imageName;
  String title;
  //分割线
  String hasDivid;
  String type;
  FMFindModel(this.imageName,this.title,this.type,this.hasDivid);
}

class FMFindMenuModel{
  //是否为分割线单位
  bool dividModel = false;
  List <FMFindModel> _models = [];
  List <FMFindModel> get models =>models;

  FMFindMenuModel(List <FMFindModel> models){
    _models.clear();
    models.forEach((model) {
      _models.add(model);
    });
  }
}