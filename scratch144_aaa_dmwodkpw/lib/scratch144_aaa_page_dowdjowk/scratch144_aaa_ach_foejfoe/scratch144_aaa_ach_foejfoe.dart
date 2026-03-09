import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_ach_bean_fjeifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_ach_foejfoe/scratch144_aaa_ach_controller_foejfoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_staorage_wijfoefkoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaAchFoejfoe extends Scratch144WidgetInhgkd<Scratch144AaaAchControllerFoejfoe>{
  @override
  Scratch144AaaAchControllerFoejfoe scratch144_init_con_djqgmr() => Scratch144AaaAchControllerFoejfoe();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.child;

  @override
  Widget scratch144_init_widget_xnblzi() => Stack(
    alignment: Alignment.topCenter,
    children: [
      Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "card_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
      Container(
        margin: EdgeInsets.only(top: 110.h,bottom: 90.h),
        child: Column(
          children: [
            _topWidget(),
            SizedBox(height: 20.h,),
            _taskWidget(),
          ],
        ),
      ),
    ],
  );

  _taskWidget()=>Expanded(
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "ach2", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
        Column(
          children: [
            SizedBox(height: 10.h,),
            Scratch144GradientTextFjeofjoe(
              textContent: "Daily achievements",
              textSize: 24.sp,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Scratch144nwekyj.colorFDF4D1,
                  Scratch144nwekyj.colorEAC151,
                ],
              ),
              fontWeight: FontWeight.bold,
              scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              outlineColor: Scratch144nwekyj.color000000,
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: MediaQuery.removePadding(
                context: ctx,
                removeTop: true,
                removeBottom: true,
                child: GetBuilder<Scratch144AaaAchControllerFoejfoe>(
                  id: "list",
                  builder: (_)=>ListView.separated(
                    itemCount: scratch144Controllerwjbgnj.achList.length,
                    itemBuilder: (context,index)=>_taskItemWidget(scratch144Controllerwjbgnj.achList[index]),
                    separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 20.h,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );

  _taskItemWidget(Scratch144AaaAchBeanFjeifjoe bean)=>Scratch144ClickWidgetMplwfm(
    onTap: (){
      scratch144Controllerwjbgnj.clickAch(bean);
    },
    child: Container(
      width: double.infinity,
      height: 88.h,
      padding: EdgeInsets.only(left: 10.w,right: 10.w),
      margin: EdgeInsets.only(left: 12.w,right: 12.w),
      decoration: BoxDecoration(
        color: Scratch144nwekyj.color0A473D,
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Scratch144TextWidgetPcbuin(
                  scratch144Textannbiq: bean.taskText??"",
                  scratch144Sizefbwmhh: 20.sp,
                  scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                  scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                ),
                SizedBox(height: 10.h,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 20.h,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Scratch144nwekyj.color063A32,
                        borderRadius: BorderRadius.circular(10.w),
                        border: Border.all(
                          width: 2.w,
                          color: Scratch144nwekyj.colorFFFFFF.withOpacity(0.35),
                        ),
                      ),
                      child: ClipRect(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          widthFactor: getProgress(bean.currentPro, bean.totalPro),
                          child: Scratch144LocalImagesWidgetGohzrl(
                            scratch144Nametrrwib: "ach4",
                            scratch144Widthcpygxw: double.infinity,
                            scratch144Heightvnnnnq: 18.h,
                          ),
                        ),
                      ),
                    ),
                    Scratch144TextWidgetPcbuin(
                      scratch144Textannbiq: "${bean.currentPro??0}/${bean.totalPro??0}",
                      scratch144Sizefbwmhh: 14.sp,
                      scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                      scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                      scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 20.w,),
          Container(
            width: 78.w,
            height: 78.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w),
              color: Scratch144nwekyj.color05332C,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8.h),
                  child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "ach5", scratch144Widthcpygxw: 78.w, scratch144Heightvnnnnq: 62.h),
                ),
                Scratch144GradientTextFjeofjoe(
                  textContent: "${bean.reward??0}",
                  textSize: 20.sp,
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
                  scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.pattaya,
                  outlineColor: Scratch144nwekyj.color000000,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  _topWidget()=>Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(height: 10.h,),
      Scratch144GradientTextFjeofjoe(
        textContent: "Achievements Wall",
        textSize: 24.sp,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Scratch144nwekyj.colorFDF4D1,
            Scratch144nwekyj.colorEAC151,
          ],
        ),
        fontWeight: FontWeight.bold,
        scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
        outlineColor: Scratch144nwekyj.color000000,
      ),
      Container(
        width: double.infinity,
        height: 96.h,
        margin: EdgeInsets.only(left: 18.w,right: 18.w,top: 10.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "ach1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12.w,right: 12.w),
                  child: GetBuilder<Scratch144AaaAchControllerFoejfoe>(
                    id: "level",
                    builder: (_)=>Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 20.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 30.w,right: 30.w,bottom: 14.h),
                              decoration: BoxDecoration(
                                color: Scratch144nwekyj.color063A32,
                                borderRadius: BorderRadius.circular(10.w),
                                border: Border.all(
                                    width: 2.w,
                                    color: Scratch144nwekyj.colorFFFFFF.withOpacity(0.35)
                                ),
                              ),
                              child: ClipRect(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  widthFactor: getProgress(scratch144Controllerwjbgnj.getCompletedTaskNum(), Scratch144AaaUserInfoFjeofjoekf.instance.getAchLevelTotalProNum()),
                                  child: Scratch144LocalImagesWidgetGohzrl(
                                    scratch144Nametrrwib: "ach3",
                                    scratch144Widthcpygxw: double.infinity,
                                    scratch144Heightvnnnnq: 18.h,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 13.h),
                              child: Scratch144TextWidgetPcbuin(
                                scratch144Textannbiq: "${scratch144Controllerwjbgnj.getCompletedTaskNum()}/${Scratch144AaaUserInfoFjeofjoekf.instance.getAchLevelTotalProNum()}",
                                scratch144Sizefbwmhh: 14.sp,
                                scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
                                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "ach_level1", scratch144Widthcpygxw: 56.w, scratch144Heightvnnnnq: null,boxFit: BoxFit.fitHeight,),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Scratch144TextWidgetPcbuin(
                                    scratch144Textannbiq: "${aAchLevelfjewifjoe.getData()}",
                                    scratch144Sizefbwmhh: 24.sp,
                                    scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                                    scratch144TextColorrzkydb: Scratch144nwekyj.colorFBE933,
                                    scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "ach_level2", scratch144Widthcpygxw: 56.w, scratch144Heightvnnnnq: null,boxFit: BoxFit.fitHeight,),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Scratch144TextWidgetPcbuin(
                                    scratch144Textannbiq: "${aAchLevelfjewifjoe.getData()+1}",
                                    scratch144Sizefbwmhh: 24.sp,
                                    scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                                    scratch144TextColorrzkydb: Scratch144nwekyj.colorFBE933,
                                    scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Scratch144TextWidgetPcbuin(
                  scratch144Textannbiq: "Complete all daily achievements",
                  scratch144Sizefbwmhh: 16.sp,
                  scratch144TextColorrzkydb: Scratch144nwekyj.color976107,
                  scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}