import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_set_dialog_feikfjoe/scratch144_aaa_set_dialog_controller_feikfjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_common_storage_iwgdlu.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaSetDialogFeikfjoe extends Scratch144WidgetInhgkd<Scratch144AaaSetDialogControllerFeikfjoe>{
  @override
  Scratch144AaaSetDialogControllerFeikfjoe scratch144_init_con_djqgmr() => Scratch144AaaSetDialogControllerFeikfjoe();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.dialog;

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
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(height: 10.h,),
      Scratch144GradientTextFjeofjoe(
        textContent: "SETTINGS",
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
      SizedBox(height: 10.h,),
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.w),
        margin: EdgeInsets.only(left: 16.w,right: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: Scratch144nwekyj.color0E201D,
          border: Border.all(
            width: 2.w,
            color: Scratch144nwekyj.colorF3F3F3.withOpacity(0.09),
          )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "set1", scratch144Widthcpygxw: 34.w, scratch144Heightvnnnnq: 34.w),
                SizedBox(width: 14.w,),
                Scratch144TextWidgetPcbuin(
                  scratch144Textannbiq: "Music",
                  scratch144Sizefbwmhh: 20.sp,
                  scratch144TextColorrzkydb: Scratch144nwekyj.colorEFFEDF,
                  scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                ),
                Spacer(),
                GetBuilder<Scratch144AaaSetDialogControllerFeikfjoe>(
                  id: "bgm",
                  builder: (_)=>Scratch144ClickWidgetMplwfm(
                    onTap: (){
                      scratch144Controllerwjbgnj.clickBgm();
                    },
                    child: Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: playBgmfejofej.getData()?"voice_open":"voice_close",
                      scratch144Widthcpygxw: 74.w,
                      scratch144Heightvnnnnq: 22.h,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "set2", scratch144Widthcpygxw: 34.w, scratch144Heightvnnnnq: 34.w),
                SizedBox(width: 14.w,),
                Scratch144TextWidgetPcbuin(
                  scratch144Textannbiq: "Sound",
                  scratch144Sizefbwmhh: 20.sp,
                  scratch144TextColorrzkydb: Scratch144nwekyj.colorEFFEDF,
                  scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                ),
                Spacer(),
                GetBuilder<Scratch144AaaSetDialogControllerFeikfjoe>(
                  id: "voice",
                  builder: (_)=>Scratch144ClickWidgetMplwfm(
                    onTap: (){
                      scratch144Controllerwjbgnj.clickVoice();
                    },
                    child: Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: playVoicefeofjoe.getData()?"voice_open":"voice_close",
                      scratch144Widthcpygxw: 74.w,
                      scratch144Heightvnnnnq: 22.h,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 10.h,),
      Scratch144ClickWidgetMplwfm(
        onTap: (){
          scratch144Controllerwjbgnj.clickPrivacy();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "lock2", scratch144Widthcpygxw: 202.w, scratch144Heightvnnnnq: 40.h),
            Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "Privacy Policy",
              scratch144Sizefbwmhh: 22.sp,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.colorBC9000,
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
            ),
          ],
        ),
      ),
      SizedBox(height: 10.h,),
      Scratch144ClickWidgetMplwfm(
        onTap: (){
          scratch144Controllerwjbgnj.clickEmail();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "lock3", scratch144Widthcpygxw: 202.w, scratch144Heightvnnnnq: 40.h),
            Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "Contact Us",
              scratch144Sizefbwmhh: 22.sp,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.color338D09,
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
            ),
          ],
        ),
      ),
    ],
  );
}