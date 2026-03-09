import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_ach_bean_fjeifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_play_fail_dialog_fjeojfoe/scratch144_aaa_play_fail_dialog_fjeojfoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_set_dialog_feikfjoe/scratch144_aaa_set_dialog_feikfjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_up_level_dialog_fjofjoe/scratch144_aaa_up_level_dialog_fjofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_win_dialog_fjeifjoej/scratch144_aaa_win_dialog_fjeifjoej.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_ach_foejfoe/scratch144_aaa_ach_foejfoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_card_child_dhwidjwo/scratch144_aaa_card_child_dhwidjwo.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_wheel_dwjodjwo/scratch144_aaa_wheel_dwjodjwo.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_ach_utils_hiwhow.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_card_list_utils_cheijoef.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_up_level_view_fjeifjeo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_ad_utils_fjijfoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';

class Scratch144AaaHomeControllerDjwidow extends Scratch144ConSspacr{
  var childIndex=0;
  List<Widget> childList=[
    Scratch144AaaCardChildDhwidjwo(),
    Scratch144AaaWheelDwjodjwo(),
    Scratch144AaaAchFoejfoe(),
  ];

  @override
  void onInit() {
    super.onInit();
    Scratch144VoiceUtilsDjeijfoiejf.instance.playBgm();
  }

  @override
  void onReady() {
    super.onReady();
    Scratch144AaaAchUtilsHiwhow.instance.updateTask(Scratch144TaskTypefejifj.openApp);
  }

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
    // Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(child: Scratch144AaaSetDialogFeikfjoe());
    // Scratch144AaaCardListUtilsCheijoef.instance.getNextCardType(Scratch144CardTypeEnumDwidjow.bigGame);
    // Scratch144AaaAchUtilsHiwhow.instance.updateTask(Scratch144TaskTypefejifj.scratch);
    // Scratch144VoiceUtilsDjeijfoiejf.instance.playVoice(Scratch144VoiceTypefjiwfjo.guaka1);
    // Scratch144VoiceUtilsDjeijfoiejf.instance.playBgm();
    Scratch144AdUtilsFjijfoe.instance.initAd();
  }
}