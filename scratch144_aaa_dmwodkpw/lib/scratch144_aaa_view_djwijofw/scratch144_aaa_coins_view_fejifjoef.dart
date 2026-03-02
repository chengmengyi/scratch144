import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_staorage_wijfoefkoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaCoinsViewFejifjoef extends Scratch144StatefulWidgetJmndjv{
  @override
  State<StatefulWidget> createState() => _Scratch144AaaCoinsViewFejifjoefState();
}

class _Scratch144AaaCoinsViewFejifjoefState extends Scratch144Statemubfka<Scratch144AaaCoinsViewFejifjoef>{
  @override
  Widget build(BuildContext context) => SizedBox(
    width: 128.w,
    height: 32.h,
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        Stack(
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "coins_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
            Container(
              margin: EdgeInsets.only(left: 26.w),
              alignment: Alignment.center,
              child: Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "${aCoinsNumwdjowkod.getData()}",
                scratch144Sizefbwmhh: 20.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              ),
            ),
          ],
        ),
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "icon_coins", scratch144Widthcpygxw: 34.w, scratch144Heightvnnnnq: 32.h),
      ],
    ),
  );

  @override
  bool scratch144_init_event_huwxya() => true;

  @override
  void scratch144_handle_event_msg_fhngrw(int eventCode, int? intValue, String? strValue, anyValue) {
    super.scratch144_handle_event_msg_fhngrw(eventCode, intValue, strValue, anyValue);
    switch(eventCode){
      case Scratch144EventCodeLmdqps.aUpdateCoinsfhwidhiw:
        setState(() { });
        break;
    }
  }
}