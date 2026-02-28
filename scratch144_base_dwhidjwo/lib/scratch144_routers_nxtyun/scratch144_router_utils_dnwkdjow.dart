import 'package:flutter/material.dart';

import '../scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144RouterUtilsDnwkdjow{
  static Scratch144RouterUtilsDnwkdjow _dnwkdjow=Scratch144RouterUtilsDnwkdjow();
  static Scratch144RouterUtilsDnwkdjow get instance => _dnwkdjow;

  toNamedsjwidjow({
    required String routerName,
    Map<String, dynamic>? params,
  }){
    Get.toNamed(routerName,arguments: params);
  }

  offNameddwdowdw({
    required String routerName,
    Map<String, dynamic>? params,
  }){
    Get.offNamed(routerName,arguments: params);
  }

  offAllNameddkfowkpwke({
    required String routerName,
    Map<String, dynamic>? params,
  }){
    Get.offAllNamed(routerName,arguments: params);
  }

  closedwkpdkwpd(){
    Get.back();
  }

  untilkdpwkpdlw({required String str}){
    Get.until((route)=>route.settings.name==str);
  }

  Map<String, dynamic> getParamsdwkepkpe(){
    try {
      return Get.arguments as Map<String, dynamic>;
    } catch (e) {
      return {};
    }
  }

  showDialogwouwojdw({
    required Widget child,
  }){
    Get.dialog(
      child,
      barrierColor: Colors.black.withOpacity(0.8),
      barrierDismissible: false,
    );
  }
}