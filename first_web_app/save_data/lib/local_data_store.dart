

import 'package:localstorage/localstorage.dart';

class LocalDataStore {
  final LocalStorage storage = new LocalStorage('local_my_data_app');

   setData({String key,dynamic value}){
    storage.setItem(key, value);
  }

  removeData({String key}){
    storage.deleteItem(key);
  }

  dynamic getData({String key}){
   return storage.getItem(key);
  }

  deleteAll(){
     storage.clear();
  }

}