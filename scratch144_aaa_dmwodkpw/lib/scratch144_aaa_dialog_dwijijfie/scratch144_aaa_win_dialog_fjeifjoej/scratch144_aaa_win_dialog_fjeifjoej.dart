import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_win_dialog_fjeifjoej/scratch144_aaa_win_dialog_controller_fjeifjoej.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_breath_widget_mknqtx.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaWinDialogFjeifjoej extends Scratch144WidgetInhgkd<Scratch144AaaWinDialogControllerFjeifjoej>{
  int reward;
  Function() callback;
  Scratch144AaaWinDialogFjeifjoej({
    required this.reward,
    required this.callback,
});

  @override
  Scratch144AaaWinDialogControllerFjeifjoej scratch144_init_con_djqgmr() => Scratch144AaaWinDialogControllerFjeifjoej();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.dialog;

  @override
  Widget scratch144_init_widget_xnblzi() => AspectRatio(
    aspectRatio: 1,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scratch144BreathWidgetMknqtx(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: Scratch144AaaGameConfigUtilsFjeofjoe.instance.isBigWin(reward)?"win3":"win1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
              Container(
                margin: EdgeInsets.only(left: 28.w,right: 28.w,bottom: 84.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "win2", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: 60.h),
                    Scratch144GradientTextFjeofjoe(
                      textContent: "+$reward",
                      textSize: 36.sp,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Scratch144nwekyj.colorFDF4D1,
                          Scratch144nwekyj.colorEAC151,
                        ],
                      ),
                      fontWeight: FontWeight.bold,
                      scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.pattaya,
                      outlineColor: Scratch144nwekyj.color522703,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Scratch144ClickWidgetMplwfm(
          onTap: (){
            scratch144Controllerwjbgnj.clickContinue(reward,callback);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "review_all_btn", scratch144Widthcpygxw: 174, scratch144Heightvnnnnq: 44.h),
              Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "Continue",
                scratch144Sizefbwmhh: 22.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}