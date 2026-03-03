import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_reward_bean_feifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_win_up_view_fjweiofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_scratch_card_rnqkxm/scratch144_scratch_card_widget_pwsltd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144TigerPlayViewDjwijow extends Scratch144StatefulWidgetJmndjv{
  
  @override
  State<StatefulWidget> createState() => _Scratch144TigerPlayViewDjwijowState();
}

class _Scratch144TigerPlayViewDjwijowState extends Scratch144Statemubfka<Scratch144TigerPlayViewDjwijow>{
  final Scratch144ScratchCardControllerPwsltd controller = Scratch144ScratchCardControllerPwsltd();
  List<Scratch144AaaRewardBeanFeifjoe> rewardList=[];
  final List<String> _otherIconList=["tiger5","tiger6","tiger7"];

  @override
  void initState() {
    super.initState();
    _initRewardList();
  }

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 148.h),
    child: Stack(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "tiger1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: 196.h,),
            Container(
              margin: EdgeInsets.only(bottom: 34.h),
              child: Scratch144AaaWinUpViewFjweiofjoe(type: Scratch144CardTypeEnumDwidjow.tiger),
            ),
          ],
        ),
        _playWidget(),
      ],
    ),
  );

  _playWidget()=>Container(
    margin: EdgeInsets.only(top: 170.h),
    child: Scratch144ScratchCardWidgetPwsltd(
      scratch144_width_qwntvi: double.infinity,
      scratch144_height_eujpfh: 347.h,
      scratch144_bottom_widget_fhpgka: _bottomWidget(),
      scratch144_cover_image_vlywop: AssetImage("assets/scratch144bsbzmv/tiger2.webp",),
      scratch144_cover_fit_uqvmxp: BoxFit.fill,
      scratch144_controller_ptjlwm: controller,
        scratch144_reveal_threshold_jfudce: 0.5,
    ),
  );

  _bottomWidget()=>Container(
    width: double.infinity,
    height: 347.h,
    child: Stack(
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "tiger3", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 42.h,left: 16.w,right: 16.w),
            child: Scratch144LocalImagesWidgetGohzrl(
              scratch144Nametrrwib: "find3",
              scratch144Widthcpygxw: double.infinity,
              scratch144Heightvnnnnq: 68.h,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 201.h,
            margin: EdgeInsets.all(16.w),
            child: Stack(
              children: [
                Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "tiger4", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
                MasonryGridView.count(
                  padding: const EdgeInsets.all(0),
                  itemCount: rewardList.length,
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>_itemItemWidget(rewardList[index]),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  _itemItemWidget(Scratch144AaaRewardBeanFeifjoe bean){
    if(bean.win){
      return SizedBox(
        width: double.infinity,
        height: 67.h,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: bean.icon, scratch144Widthcpygxw: 48.w, scratch144Heightvnnnnq: 48.h,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Scratch144TextWidgetPcbuin(
                scratch144Textannbiq: "${bean.rewardNum}",
                scratch144Sizefbwmhh: 26.sp,
                scratch144TextColorrzkydb: Scratch144nwekyj.colorFCDE39,
                scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
                scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
              ),
            )
          ],
        ),
      );
    }
    return Container(
      width: double.infinity,
      height: 67.h,
      alignment: Alignment.center,
      child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: bean.icon, scratch144Widthcpygxw: 54.w, scratch144Heightvnnnnq: 54.h
      ),
    );
  }

  _initRewardList(){
    rewardList.clear();
    var tigerNum = Scratch144AaaGameConfigUtilsFjeofjoe.instance.getTigerNum();
    var rewardNum = Scratch144AaaGameConfigUtilsFjeofjoe.instance.getRewardNum(Scratch144CardTypeEnumDwidjow.tiger);
    for(var index=0;index<tigerNum;index++){
      rewardList.add(Scratch144AaaRewardBeanFeifjoe(icon: "tiger8", win: true, rewardNum: rewardNum));
    }
    while(rewardList.length<12){
      rewardList.add(Scratch144AaaRewardBeanFeifjoe(icon: _otherIconList.random(), win: false, rewardNum: rewardNum));
    }
    setState(() {});
  }
}