import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaLevelViewFjeifjoejf extends Scratch144StatefulWidgetJmndjv{
  @override
  State<StatefulWidget> createState() => Scratch144AaaLevelViewFjeifjoejfState();
}

class Scratch144AaaLevelViewFjeifjoejfState extends Scratch144Statemubfka<Scratch144AaaLevelViewFjeifjoejf>{
  @override
  Widget build(BuildContext context) => Stack(
    alignment: Alignment.centerLeft,
    children: [
      Container(
        width: 126.w,
        height: 32.h,
        margin: EdgeInsets.only(left: 12.w,top: 4.h),
        child: Stack(
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "coins_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(left: 16.w,top: 2.h,bottom: 2.h,right: 2.w),
              child: Stack(
                children: [
                  ClipRect(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      widthFactor: getProgress(Scratch144AaaUserInfoFjeofjoekf.instance.getCurrentLevelPro(), Scratch144AaaUserInfoFjeofjoekf.instance.getLevelTotalPro()),
                      child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "level_pro", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Scratch144TextWidgetPcbuin(
                      scratch144Textannbiq: "${Scratch144AaaUserInfoFjeofjoekf.instance.getCurrentLevelPro()}/${Scratch144AaaUserInfoFjeofjoekf.instance.getLevelTotalPro()}",
                      scratch144Sizefbwmhh: 20.sp,
                      scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                      scratch144OutLineColorbzjwzh: Scratch144nwekyj.color3E3E3E,
                      scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "level_card", scratch144Widthcpygxw: 26.w, scratch144Heightvnnnnq: 26.w),
            ),
          ],
        ),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "level2", scratch144Widthcpygxw: 58.w, scratch144Heightvnnnnq: 45.h),
          Container(
            margin: EdgeInsets.only(top: 6.h),
            child: Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "${Scratch144AaaUserInfoFjeofjoekf.instance.getCurrentLevel()}",
              scratch144Sizefbwmhh: 24.sp,
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFBE933,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
            ),
          ),
        ],
      ),
    ],
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