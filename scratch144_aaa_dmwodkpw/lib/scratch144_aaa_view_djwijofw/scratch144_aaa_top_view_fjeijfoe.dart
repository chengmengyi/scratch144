import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_set_dialog_feikfjoe/scratch144_aaa_set_dialog_feikfjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_coins_view_fejifjoef.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_level_view_fjeifjoejf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';

class Scratch144AaaTopViewFjeijfoe extends Scratch144StatefulWidgetJmndjv{
  bool isPlayPage;
  Function()? clickHome;
  Function()? testCall;
  Scratch144AaaTopViewFjeijfoe({
    this.isPlayPage=false,
    this.clickHome,
    this.testCall,
});
  @override
  State<StatefulWidget> createState() => _Scratch144AaaTopViewFjeijfoeState();
}

class _Scratch144AaaTopViewFjeijfoeState extends Scratch144Statemubfka<Scratch144AaaTopViewFjeijfoe>{
  @override
  Widget build(BuildContext context) => SizedBox(
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
              Expanded(
                child: Scratch144ClickWidgetMplwfm(
                  onTap: (){
                    widget.testCall?.call();
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 36.w,
                  ),
                ),
              ),
              Visibility(
                visible: !widget.isPlayPage,
                child: Scratch144ClickWidgetMplwfm(
                  onTap: (){
                    Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(child: Scratch144AaaSetDialogFeikfjoe());
                  },
                  child: Scratch144LocalImagesWidgetGohzrl(
                    scratch144Nametrrwib: "icon_set",
                    scratch144Widthcpygxw: 36.w,
                    scratch144Heightvnnnnq: 36.w,
                  ),
                ),
              ),
              Visibility(
                visible: widget.isPlayPage,
                child: Scratch144ClickWidgetMplwfm(
                  onTap: (){
                    widget.clickHome?.call();
                  },
                  child: Scratch144LocalImagesWidgetGohzrl(
                    scratch144Nametrrwib: "icon_home",
                    scratch144Widthcpygxw: 36.w,
                    scratch144Heightvnnnnq: 36.w,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

}