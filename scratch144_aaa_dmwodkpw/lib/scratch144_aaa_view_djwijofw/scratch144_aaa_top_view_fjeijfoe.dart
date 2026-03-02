import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_coins_view_fejifjoef.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_level_view_fjeifjoejf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';

class Scratch144AaaTopViewFjeijfoe extends Scratch144StatefulWidgetJmndjv{
  @override
  State<StatefulWidget> createState() => _Scratch144AaaTopViewFjeijfoeState();
}

class _Scratch144AaaTopViewFjeijfoeState extends Scratch144Statemubfka<Scratch144AaaTopViewFjeijfoe>{
  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    height: 108.h,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "top_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Scratch144AaaCoinsViewFejifjoef(),
              Scratch144AaaLevelViewFjeifjoejf(),
              Spacer(),
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "icon_set", scratch144Widthcpygxw: 36.w, scratch144Heightvnnnnq: 36.w),
            ],
          ),
        )
      ],
    ),
  );

}