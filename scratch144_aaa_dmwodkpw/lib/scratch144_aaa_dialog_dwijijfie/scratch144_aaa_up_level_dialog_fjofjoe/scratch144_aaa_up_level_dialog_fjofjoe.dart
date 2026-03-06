import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_up_level_dialog_fjofjoe/scratch144_aaa_up_level_dialog_controller_fjofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaUpLevelDialogFjofjoe extends Scratch144WidgetInhgkd<Scratch144AaaUpLevelDialogControllerFjofjoe>{

  @override
  Scratch144AaaUpLevelDialogControllerFjofjoe scratch144_init_con_djqgmr() => Scratch144AaaUpLevelDialogControllerFjofjoe();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.dialog;

  @override
  Widget scratch144_init_widget_xnblzi() => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      _topWidget(),
      SizedBox(height: 18.h,),
      _moneyWidget(),
      SizedBox(height: 18.h,),
      _btnWidget(),
    ],
  );

  _topWidget()=>Stack(
    alignment: Alignment.bottomCenter,
    children: [
      SizedBox(
        width: 185.w,
        height: 175.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "up_level1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
            Container(
              margin: EdgeInsets.only(bottom: 48.h),
              child: Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "${Scratch144AaaUserInfoFjeofjoekf.instance.getCurrentLevel()}",
                scratch144Sizefbwmhh: 48.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFBE933,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 14.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "up_level2", scratch144Widthcpygxw: 293.w, scratch144Heightvnnnnq: 56.h),
            Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "Level up",
              scratch144Sizefbwmhh: 28.sp,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
            ),
          ],
        ),
      )
    ],
  );

  _moneyWidget()=>Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 40.h),
        child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "up_level3", scratch144Widthcpygxw: 206.w, scratch144Heightvnnnnq: 166.h),
      ),
      Scratch144GradientTextFjeofjoe(
        textContent: "+${Scratch144AaaGameConfigUtilsFjeofjoe.instance.upLevelAddNum()}",
        textSize: 40.sp,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Scratch144nwekyj.colorFFC316,
            Scratch144nwekyj.colorFFF5AC,
            Scratch144nwekyj.colorFFC51D,
          ],
        ),
        fontWeight: FontWeight.bold,
        outlineColor: Scratch144nwekyj.color522703,
        scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.pattaya,
      ),
    ],
  );

  _btnWidget()=>Scratch144ClickWidgetMplwfm(
    onTap: (){
      scratch144Controllerwjbgnj.clickContinue();
    },
    child: Stack(
      alignment: Alignment.center,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "review_all_btn", scratch144Widthcpygxw: 204.w, scratch144Heightvnnnnq: 52.h),
        Scratch144TextWidgetPcbuin(
          scratch144Textannbiq: "Continue",
          scratch144Sizefbwmhh: 22.sp,
          scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
          scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
          scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
        ),
      ],
    ),
  );
}