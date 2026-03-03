import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_play_fail_dialog_fjeojfoe/scratch144_aaa_play_fail_dialog_controller_fjeojfoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaPlayFailDialogFjeojfoe extends Scratch144WidgetInhgkd<Scratch144AaaPlayFailDialogControllerFjeojfoe>{
  Function() callback;
  Scratch144AaaPlayFailDialogFjeojfoe({
    required this.callback,
});
  @override
  Scratch144AaaPlayFailDialogControllerFjeojfoe scratch144_init_con_djqgmr() => Scratch144AaaPlayFailDialogControllerFjeojfoe();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.dialog;

  @override
  Widget scratch144_init_widget_xnblzi() => Container(
    width: double.infinity,
    height: 262.h,
    margin: EdgeInsets.only(left: 42.w,right: 42.w),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "fail1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
        Column(
          children: [
            SizedBox(height: 10.h,),
            Scratch144GradientTextFjeofjoe(
              textContent: "No wins.please try again",
              textSize: 20.sp,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Scratch144nwekyj.colorFDF4D1,Scratch144nwekyj.colorEAC151],
              ),
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              outlineColor: Scratch144nwekyj.color000000,
            ),
            Spacer(),
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "fail2", scratch144Widthcpygxw: 137.w, scratch144Heightvnnnnq: 122.h),
            Spacer(),
            Scratch144ClickWidgetMplwfm(
              onTap: (){
                scratch144Controllerwjbgnj.clickRetry(callback);
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "review_all_btn", scratch144Widthcpygxw: 159, scratch144Heightvnnnnq: 42.h),
                  Scratch144TextWidgetPcbuin(
                    scratch144Textannbiq: "Retry",
                    scratch144Sizefbwmhh: 22.sp,
                    scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                    scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                    scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
          ],
        ),
      ],
    ),
  );
}