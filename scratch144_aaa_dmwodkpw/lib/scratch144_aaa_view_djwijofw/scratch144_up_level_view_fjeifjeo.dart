import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144UpLevelViewFjeifjeo extends Scratch144StatefulWidgetJmndjv{
  @override
  State<StatefulWidget> createState() => _Scratch144UpLevelViewFjeifjeoState();
}

class _Scratch144UpLevelViewFjeifjeoState extends Scratch144Statemubfka<Scratch144UpLevelViewFjeifjeo>{
  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    height: 40.h,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "up_level_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
        Scratch144TextWidgetPcbuin(
          scratch144Textannbiq: "Scratch ${Scratch144AaaUserInfoFjeofjoekf.instance.getLevelTotalPro()-Scratch144AaaUserInfoFjeofjoekf.instance.getCurrentLevelPro()} cards left to level up",
          scratch144Sizefbwmhh: 24.sp,
          scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
          scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
          scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
        ),
      ],
    ),
  );


  @override
  bool scratch144_init_event_huwxya() => true;

  @override
  void scratch144_handle_event_msg_fhngrw(int eventCode, int? intValue, String? strValue, anyValue) {
    super.scratch144_handle_event_msg_fhngrw(eventCode, intValue, strValue, anyValue);
    switch(eventCode){
      case Scratch144EventCodeLmdqps.aUpdateGuaKaNumfeifjoe:
        setState(() { });
        break;
    }
  }
}