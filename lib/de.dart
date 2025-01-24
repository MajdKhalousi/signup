import 'package:flutter/foundation.dart';
import 'package:get/get.dart';


class De{
  final userRepository = Get.put(De());
  static De get instance => Get.find();

  void print( String Message){
    if (kDebugMode) {
      print('================  ' + Message +'  =================');
      //. print(deviceStorage.read('IsFirstTime'));
    }
  }
}