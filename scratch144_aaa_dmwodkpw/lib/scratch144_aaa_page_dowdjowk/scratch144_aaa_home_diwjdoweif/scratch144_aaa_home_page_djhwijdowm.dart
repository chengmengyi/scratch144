import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_home_diwjdoweif/scratch144_aaa_home_controller_djwidow.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_top_view_fjeijfoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaHomePageDjhwijdowm extends Scratch144WidgetInhgkd<Scratch144AaaHomeControllerDjwidow> {
  @override
  Scratch144AaaHomeControllerDjwidow scratch144_init_con_djqgmr() => Scratch144AaaHomeControllerDjwidow();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.page;

  @override
  Widget scratch144_init_widget_xnblzi() => Stack(
    children: [
      GetBuilder<Scratch144AaaHomeControllerDjwidow>(
        id: "page",
        builder: (_)=>IndexedStack(
          index: scratch144Controllerwjbgnj.childIndex,
          children: scratch144Controllerwjbgnj.childList,
        ),
      ),
      Scratch144AaaTopViewFjeijfoe(),
      Align(
        alignment: Alignment.bottomCenter,
        child: _bottomWidget(),
      ),
    ],
  );

  _bottomWidget()=>GetBuilder<Scratch144AaaHomeControllerDjwidow>(
    id: "bottom",
    builder: (_)=>SizedBox(
      width: double.infinity,
      height: 98.h,
      child: Stack(
        children: [
          Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "bottom_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Row(
              children: [
                _bottomCardItemWidget(),
                SizedBox(width: 2.w,),
                _bottomWheelItemWidget(),
                SizedBox(width: 2.w,),
                _bottomAchItemWidget(),
              ],
            ),
          )
        ],
      ),
    ),
  );

  _bottomCardItemWidget()=>Expanded(
    child: Scratch144ClickWidgetMplwfm(
      onTap: (){
        scratch144Controllerwjbgnj.clickBottomItem(0);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: scratch144Controllerwjbgnj.childIndex==0,
            child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "selected_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "bottom_card", scratch144Widthcpygxw: 84.w, scratch144Heightvnnnnq: 64.h,),
              Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "Cards",
                scratch144Sizefbwmhh: 20.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              ),
            ],
          ),
        ],
      ),
    ),
  );

  _bottomWheelItemWidget()=>Expanded(
    child: Scratch144ClickWidgetMplwfm(
      onTap: (){
        scratch144Controllerwjbgnj.clickBottomItem(1);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: scratch144Controllerwjbgnj.childIndex==1,
            child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "selected_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "bottom_wheel", scratch144Widthcpygxw: 70.w, scratch144Heightvnnnnq: 73.h,),
              Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "Wheel",
                scratch144Sizefbwmhh: 20.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              ),
            ],
          ),
        ],
      ),
    ),
  );

  _bottomAchItemWidget()=>Expanded(
    child: Scratch144ClickWidgetMplwfm(
      onTap: (){
        scratch144Controllerwjbgnj.clickBottomItem(2);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: scratch144Controllerwjbgnj.childIndex==2,
            child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "selected_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "bottom_ach", scratch144Widthcpygxw: 64.w, scratch144Heightvnnnnq: 58.h,),
              Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "Achievement",
                scratch144Sizefbwmhh: 16.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
