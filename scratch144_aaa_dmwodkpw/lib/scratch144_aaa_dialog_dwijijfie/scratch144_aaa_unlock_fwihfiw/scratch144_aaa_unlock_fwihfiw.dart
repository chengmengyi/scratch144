import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_unlock_fwihfiw/scratch144_aaa_unlock_controller_fwihfiw.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaUnlockFwihfiw extends Scratch144WidgetInhgkd<Scratch144AaaUnlockControllerFwihfiw>{
  Scratch144CardTypeEnumDwidjow? type;
  Function() unlockCallback;
  Scratch144AaaUnlockFwihfiw({
    required this.type,
    required this.unlockCallback,
});

  @override
  Scratch144AaaUnlockControllerFwihfiw scratch144_init_con_djqgmr() => Scratch144AaaUnlockControllerFwihfiw();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() =>Scratch144WidgetTypezeuaqu.dialog;

  @override
  Widget scratch144_init_widget_xnblzi() => Container(
    margin: EdgeInsets.only(left: 30.w,right: 30.w),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          height: 292.h,
          margin: EdgeInsets.all(12.w),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "lock1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
              _contentWidget(),
            ],
          ),
        ),
        Scratch144ClickWidgetMplwfm(
          onTap: (){
            scratch144Controllerwjbgnj.clickClose();
          },
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "icon_close", scratch144Widthcpygxw: 28.w, scratch144Heightvnnnnq: 28.w,),
        ),
      ],
    ),
  );

  _contentWidget()=>Column(
    children: [
      SizedBox(height: 10.h,),
      Scratch144GradientTextFjeofjoe(
        textContent: "UNLOCK LEVEL",
        textSize: 32.sp,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Scratch144nwekyj.colorFDF4D1,
            Scratch144nwekyj.colorEAC151,
          ],
        ),
        fontWeight: FontWeight.bold,
        outlineColor: Scratch144nwekyj.color000000,
        scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
      ),
      Spacer(),
      Container(
        margin: EdgeInsets.only(left: 16.w,right: 16.w),
        child: Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: scratch144Controllerwjbgnj.getBgImages(type),
          scratch144Widthcpygxw: double.infinity,
          scratch144Heightvnnnnq: 98.h,
        ),
      ),
      Spacer(),
      Scratch144ClickWidgetMplwfm(
        onTap: (){
          scratch144Controllerwjbgnj.lookAdUnLock(type, unlockCallback);
        },
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "lock2", scratch144Widthcpygxw: 202.w, scratch144Heightvnnnnq: 40.h),
                  Scratch144TextWidgetPcbuin(
                    scratch144Textannbiq: "Free Unlock",
                    scratch144Sizefbwmhh: 22.sp,
                    scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                    scratch144OutLineColorbzjwzh: Scratch144nwekyj.colorBC9000,
                    scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                  ),
                ],
              ),
            ),
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "icon_video", scratch144Widthcpygxw: 28.w, scratch144Heightvnnnnq: 28.w),
          ],
        ),
      ),
      SizedBox(height: 10.h,),
      Scratch144ClickWidgetMplwfm(
        onTap: (){
          scratch144Controllerwjbgnj.useMoneyUnlock(type, unlockCallback);
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "lock3", scratch144Widthcpygxw: 202.w, scratch144Heightvnnnnq: 40.h),
            Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "Spend ${Scratch144AaaGameConfigUtilsFjeofjoe.instance.unlockMoneyNum()}",
              scratch144Sizefbwmhh: 22.sp,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.color338D09,
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
            ),
          ],
        ),
      ),
      SizedBox(height: 20.h,),
    ],
  );
}