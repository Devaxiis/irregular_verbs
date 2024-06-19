

import 'package:flutter/cupertino.dart';

import '../../domain/models/main_model.dart';
import '../../utils/data/data_base.dart';

class GetDataProvider extends ChangeNotifier{
  MainModel item =MainModel(present: "", past: "", future: "", translate: "");

  void getData(String data){
    for(int i = 0 ; i < DataBase.appDataBase.length;i++ ){
    if(DataBase.appDataBase[i].present == data||DataBase.appDataBase[i].past == data||DataBase.appDataBase[i].future == data){
     item = DataBase.appDataBase[i];
     notifyListeners();
     break;
    }else{
      item = MainModel(present: '', past: '', future: "", translate: "");
    notifyListeners();
    }

    }
  }

  MainModel get currentData => item;

}