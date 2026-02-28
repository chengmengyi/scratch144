import 'package:flutter/material.dart';
import 'package:scratch144/scratch144_launch_dwkjdow/scratch144_launch_controller_dwkjdow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144LaunchPageDwkjdow extends Scratch144WidgetInhgkd<Scratch144LaunchControllerDwkjdow>{
  @override
  Scratch144LaunchControllerDwkjdow scratch144_init_con_djqgmr() => Scratch144LaunchControllerDwkjdow();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.page;

  @override
  Widget scratch144_init_widget_xnblzi() => Stack(
    alignment: Alignment.topCenter,
    children: [
      Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "launch1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
      Column(
        children: [
          SizedBox(height: 130.h,),
          Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "launch2", scratch144Widthcpygxw: 142.w, scratch144Heightvnnnnq: 142.w),
          Spacer(),
          Container(
            width: double.infinity,
            height: 18.h,
            margin: EdgeInsets.only(left: 16.w,right: 16.w),
            child: GetBuilder<Scratch144LaunchControllerDwkjdow>(
              id: "progress",
              builder: (_)=>Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "launch3", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: 20.h),
                  Container(
                    margin: EdgeInsets.only(left: 1.w,right: 1.w),
                    child: ClipRect(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        widthFactor: scratch144Controllerwjbgnj.controller.value,
                        child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "launch4", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: 16.h),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Scratch144TextWidgetPcbuin(scratch144Textannbiq: "Top winners are waiting for you....", scratch144Sizefbwmhh: 18.sp, scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,),
          SizedBox(height: 150.h,),
        ],
      ),
    ],
  );
}