import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_play_fjkoekoe/scratch144_aaa_play_controller_fjkoekoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_top_view_fjeijfoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_play_view_fkoekfeop/scratch144_tiger_play_view_djwijow.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_up_level_view_fjeifjeo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaPlayFjkoekoe extends Scratch144WidgetInhgkd<Scratch144AaaPlayControllerFjkoekoe>{
  @override
  Scratch144AaaPlayControllerFjkoekoe scratch144_init_con_djqgmr() => Scratch144AaaPlayControllerFjkoekoe();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.page;

  @override
  Widget scratch144_init_widget_xnblzi() => Stack(
    children: [
      Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: scratch144Controllerwjbgnj.getBgImages(), scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
      _getPlayWidget(),
      Column(
        children: [
          Scratch144AaaTopViewFjeijfoe(
            isPlayPage: true,
            clickHome: (){
              scratch144Controllerwjbgnj.clickHome();
            },
          ),
          SizedBox(height: 20.h,),
          Scratch144UpLevelViewFjeifjeo(),
        ],
      ),
      _bottomWidget(),
    ],
  );

  _bottomWidget()=>Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.only(bottom: 44.h,left: 20.w,right: 20.w),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "more_bg", scratch144Widthcpygxw: 98.w, scratch144Heightvnnnnq: 76.h),
              Container(
                padding: EdgeInsets.only(left: 6.w,right: 6.w,top: 2.h,bottom: 2.h),
                decoration: BoxDecoration(
                  color: Scratch144nwekyj.color1F1F1F.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16.w),
                  border: Border.all(
                    width: 2.w,
                    color: Scratch144nwekyj.colorF3E0A5,
                  ),
                ),
                child: Scratch144TextWidgetPcbuin(
                  scratch144Textannbiq: "More Tickets",
                  scratch144Sizefbwmhh: 17.sp,
                  scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                  scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                  scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                ),
              )
            ],
          ),
          SizedBox(width: 16.w,),
          Expanded(
            child: Scratch144ClickWidgetMplwfm(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "review_all_btn", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: 52.h),
                  Scratch144TextWidgetPcbuin(
                    scratch144Textannbiq: "Reveal All",
                    scratch144Sizefbwmhh: 24.sp,
                    scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                    scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                    scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );

  _getPlayWidget(){
    switch(scratch144Controllerwjbgnj.type){
      case Scratch144CardTypeEnumDwidjow.tiger: return Scratch144TigerPlayViewDjwijow();
      default: return Container();
    }
  }
}