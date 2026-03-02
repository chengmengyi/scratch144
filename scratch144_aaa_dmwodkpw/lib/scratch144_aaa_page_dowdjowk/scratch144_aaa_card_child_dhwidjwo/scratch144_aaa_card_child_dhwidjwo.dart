import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_card_child_dhwidjwo/scratch144_aaa_card_child_controller_dhwidjwo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaCardChildDhwidjwo extends Scratch144WidgetInhgkd<Scratch144AaaCardChildControllerDhwidjwo>{
  @override
  Scratch144AaaCardChildControllerDhwidjwo scratch144_init_con_djqgmr() => Scratch144AaaCardChildControllerDhwidjwo();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() => Scratch144WidgetTypezeuaqu.child;

  @override
  Widget scratch144_init_widget_xnblzi() => Container(
    padding: EdgeInsets.only(top: 110.h,bottom: 100.h),
    child: Stack(
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "card_bg", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15.w,right: 15.w),
            child: Column(
              children: [
                SizedBox(height: 6.h,),
                _largeItemWidget(Scratch144CardTypeEnumDwidjow.tiger),
                SizedBox(height: 6.h,),
                _smallItemWidget(Scratch144CardTypeEnumDwidjow.emoji,Scratch144CardTypeEnumDwidjow.bigGame),
                SizedBox(height: 6.h,),
                _largeItemWidget(Scratch144CardTypeEnumDwidjow.hot77),
                SizedBox(height: 6.h,),
                _smallItemWidget(Scratch144CardTypeEnumDwidjow.luckyRich,Scratch144CardTypeEnumDwidjow.sweet),
                SizedBox(height: 6.h,),
                _largeItemWidget(Scratch144CardTypeEnumDwidjow.moneyStorm),
                SizedBox(height: 6.h,),
                _smallItemWidget(Scratch144CardTypeEnumDwidjow.fruit,Scratch144CardTypeEnumDwidjow.mega),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  _largeItemWidget(Scratch144CardTypeEnumDwidjow type)=> SizedBox(
    width: double.infinity,
    height: 130.h,
    child: Stack(
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: scratch144Controllerwjbgnj.getBgImages(type), scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
        _getLargeIconWidget(type),
        _cardNumLeftWidget(type),
      ],
    ),
  );

  _getLargeIconWidget(Scratch144CardTypeEnumDwidjow type){
    if(type==Scratch144CardTypeEnumDwidjow.tiger){
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 38.w),
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "tiger_icon", scratch144Widthcpygxw: 156.w, scratch144Heightvnnnnq: 88.h),
        ),
      );
    }
    if(type==Scratch144CardTypeEnumDwidjow.hot77){
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 12.h),
          child: Scratch144LocalImagesWidgetGohzrl(
            scratch144Nametrrwib: "hot_icon",
            scratch144Widthcpygxw: null,
            scratch144Heightvnnnnq: 82.h,
            boxFit: BoxFit.fitHeight,
          ),
        ),
      );
    }
    if(type==Scratch144CardTypeEnumDwidjow.moneyStorm){
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 2.h),
          child: Scratch144LocalImagesWidgetGohzrl(
            scratch144Nametrrwib: "money_icon",
            scratch144Widthcpygxw: null,
            scratch144Heightvnnnnq: 114.h,
            boxFit: BoxFit.fitHeight,
          ),
        ),
      );
    }
    return Container();
  }

  _smallItemWidget(Scratch144CardTypeEnumDwidjow leftType,Scratch144CardTypeEnumDwidjow rightType)=>LayoutBuilder(
    builder: (context,bc){
      var width = bc.maxWidth/2+(12.w);
      return SizedBox(
        width: double.infinity,
        height: 130.h,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: width,
                height: 130.h,
                child: Stack(
                  children: [
                    Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: scratch144Controllerwjbgnj.getBgImages(leftType), scratch144Widthcpygxw: width, scratch144Heightvnnnnq: double.infinity),
                    _getSmallLeftIconWidget(leftType),
                    _cardNumLeftWidget(leftType),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: width,
                height: 130.h,
                child: Stack(
                  children: [
                    Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: scratch144Controllerwjbgnj.getBgImages(rightType), scratch144Widthcpygxw: width, scratch144Heightvnnnnq: double.infinity),
                    _getSmallRightIconWidget(rightType),
                    _cardNumRightWidget(rightType),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );

  _getSmallLeftIconWidget(Scratch144CardTypeEnumDwidjow leftType){
    if(leftType==Scratch144CardTypeEnumDwidjow.emoji){
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 18.h),
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "emoji_icon", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 70.h,boxFit: BoxFit.fitHeight,),
        ),
      );
    }
    if(leftType==Scratch144CardTypeEnumDwidjow.luckyRich){
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 6.h),
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "lucky_icon", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 96.h,boxFit: BoxFit.fitHeight,),
        ),
      );
    }
    if(leftType==Scratch144CardTypeEnumDwidjow.fruit){
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 8.h),
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "fruit_icon", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 114.h,boxFit: BoxFit.fitHeight,),
        ),
      );
    }
    return Container();
  }

  _getSmallRightIconWidget(Scratch144CardTypeEnumDwidjow rightType){
    if(rightType==Scratch144CardTypeEnumDwidjow.bigGame){
      return Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.only(top: 8.h,right: 10.w),
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "big_icon", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 102.h,boxFit: BoxFit.fitHeight,),
        ),
      );
    }
    if(rightType==Scratch144CardTypeEnumDwidjow.sweet){
      return Align(
        alignment: Alignment.topCenter,
        child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "sweet_icon", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 84.h,boxFit: BoxFit.fitHeight,),
      );
    }
    if(rightType==Scratch144CardTypeEnumDwidjow.mega){
      return Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.only(top: 26.h,right: 16.w),
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "mega_icon", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 63.h,boxFit: BoxFit.fitHeight,),
        ),
      );
    }
    return Container();
  }

  _cardNumLeftWidget(Scratch144CardTypeEnumDwidjow type)=>Container(
    margin: EdgeInsets.only(left: 8.w,top: 5.h),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "card_num_left_bg", scratch144Widthcpygxw: 114.w, scratch144Heightvnnnnq: 26.h),
        Scratch144TextWidgetPcbuin(
          scratch144Textannbiq: "Card：3/10",
          scratch144Sizefbwmhh: 16.sp,
          scratch144FontWeightvzszvv: FontWeight.bold,
          scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
          scratch144OutLineColorbzjwzh: Scratch144nwekyj.color7C6224,
        ),
      ],
    ),
  );

  _cardNumRightWidget(Scratch144CardTypeEnumDwidjow type)=>Align(
    alignment: Alignment.topRight,
    child: Container(
      margin: EdgeInsets.only(right: 8.w,top: 5.h),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "card_num_right_bg", scratch144Widthcpygxw: 114.w, scratch144Heightvnnnnq: 26.h),
          Scratch144TextWidgetPcbuin(
            scratch144Textannbiq: "Card：3/10",
            scratch144Sizefbwmhh: 16.sp,
            scratch144FontWeightvzszvv: FontWeight.bold,
            scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
            scratch144OutLineColorbzjwzh: Scratch144nwekyj.color7C6224,
          ),
        ],
      ),
    ),
  );
}