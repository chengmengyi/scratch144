import 'package:flutter/material.dart';
import 'package:scratch144/scratch144_web_fjeofje/scratch144_web_controller_fjeofje.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144WebFjeofje extends Scratch144WidgetInhgkd<Scratch144WebControllerFjeofje>{
  @override
  Scratch144WebControllerFjeofje scratch144_init_con_djqgmr() => Scratch144WebControllerFjeofje();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.page;

  @override
  Widget scratch144_init_widget_xnblzi() => Column(
    children: [
      SizedBox(
        width: double.infinity,
        height: 108.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "top_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
            SafeArea(
              top: true,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Scratch144ClickWidgetMplwfm(
                          onTap: (){
                            scratch144Controllerwjbgnj.clickClose();
                          },
                          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "icon_close", scratch144Widthcpygxw: 28.w, scratch144Heightvnnnnq: 28.w),
                        ),
                      ),
                    ),
                    Align(
                      child: Scratch144TextWidgetPcbuin(
                        scratch144Textannbiq: scratch144Controllerwjbgnj.title,
                        scratch144Sizefbwmhh: 20.sp,
                        scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                        scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                        scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(child: WebViewWidget(controller: scratch144Controllerwjbgnj.controller)),
    ],
  );
}