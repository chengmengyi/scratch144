import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_ach_foejfoe/scratch144_aaa_ach_foejfoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_card_child_dhwidjwo/scratch144_aaa_card_child_dhwidjwo.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_wheel_dwjodjwo/scratch144_aaa_wheel_dwjodjwo.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';

class Scratch144AaaHomeControllerDjwidow extends Scratch144ConSspacr{
  var childIndex=0;
  List<Widget> childList=[
    Scratch144AaaCardChildDhwidjwo(),
    Scratch144AaaWheelDwjodjwo(),
    Scratch144AaaAchFoejfoe(),
  ];

  clickBottomItem(int index){
    if(index==childIndex){
      return;
    }
    childIndex=index;
    update(["bottom","page"]);
  }
  
  test()async{
    if(!kDebugMode){
      return;
    }
    Scratch144AaaGameConfigUtilsFjeofjoe.instance.getTigerNum();
  }
}