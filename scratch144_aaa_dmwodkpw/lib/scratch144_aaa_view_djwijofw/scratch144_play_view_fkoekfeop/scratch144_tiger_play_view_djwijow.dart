import 'package:flutter/material.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_scratch_card_rnqkxm/scratch144_scratch_card_widget_pwsltd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';

class Scratch144TigerPlayViewDjwijow extends Scratch144StatefulWidgetJmndjv{
  @override
  State<StatefulWidget> createState() => _Scratch144TigerPlayViewDjwijowState();
}

class _Scratch144TigerPlayViewDjwijowState extends Scratch144Statemubfka<Scratch144TigerPlayViewDjwijow>{
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 148.h),
    child: Stack(
      children: [
        Stack(
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "tiger1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: 196.h,),

          ],
        ),
        _playWidget(),
      ],
    ),
  );

  _playWidget()=>Container(
    margin: EdgeInsets.only(top: 170.h),
    child: Scratch144ScratchCardWidgetPwsltd(
      scratch144_width_qwntvi: double.infinity,
      scratch144_height_eujpfh: 347.h,
      scratch144_bottom_widget_fhpgka: _bottomWidget(),
      scratch144_cover_image_vlywop: AssetImage("assets/scratch144bsbzmv/tiger2.webp",),
    ),
  );

  _bottomWidget()=>SizedBox(
    width: double.infinity,
    height: 347.h,
    child: Stack(
      children: [

      ],
    ),
  );
}