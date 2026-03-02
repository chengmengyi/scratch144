import 'package:flutter/cupertino.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_address_qvjthh.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144LaunchControllerDwkjdow extends Scratch144ConSspacr with GetSingleTickerProviderStateMixin{
  late AnimationController controller;

  @override
  void onInit() {
    super.onInit();
    controller=AnimationController(duration: const Duration(seconds: 2),vsync: this)
      ..addListener(() {
        update(["progress"]);
      })
      ..addStatusListener((status) {
        if(status==AnimationStatus.completed){
          _completed();
        }
      });
  }

  @override
  void onReady() {
    super.onReady();
    controller.forward();
  }

  _completed(){
    Scratch144RouterUtilsDnwkdjow.instance.offNameddwdowdw(routerName: Scratch144RouterAddressQvjthh.aHome);
  }
}