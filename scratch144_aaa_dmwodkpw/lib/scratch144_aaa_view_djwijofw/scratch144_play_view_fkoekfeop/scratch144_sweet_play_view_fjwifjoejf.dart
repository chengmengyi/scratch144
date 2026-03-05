import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_reward_bean_feifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_play_listener.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_view_djwijofw/scratch144_aaa_win_up_view_fjweiofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_stateful_widget_jmndjv.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_scratch_card_rnqkxm/scratch144_scratch_card_widget_pwsltd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_breath_widget_mknqtx.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144SweetPlayViewFjwifjoejf extends Scratch144StatefulWidgetJmndjv{
  Scratch144AaaPlayListener playListener;
  Scratch144SweetPlayViewFjwifjoejf({
    required this.playListener,
  });
  @override
  State<StatefulWidget> createState() => _Scratch144SweetPlayViewFjwifjoejfState();
}

class _Scratch144SweetPlayViewFjwifjoejfState extends Scratch144Statemubfka<Scratch144SweetPlayViewFjwifjoejf>{
  final Scratch144CardTypeEnumDwidjow type=Scratch144CardTypeEnumDwidjow.sweet;
  final Scratch144ScratchCardControllerPwsltd controller = Scratch144ScratchCardControllerPwsltd();
  final Random _scratch144_random_vnhqxt = Random();
  var showResult=false;
  List<int> rewardIntList=[];
  final List<String> _iconList=["sweet3","sweet4","sweet5"];
  List<Scratch144AaaRewardBeanFeifjoe> rewardList=[];
  final ValueNotifier<Offset> scratch144_aaa_card_offset_hqzpmr = ValueNotifier<Offset>(Offset.zero);
  final ValueNotifier<Duration> scratch144_aaa_card_anim_duration_mpwzqy = ValueNotifier<Duration>(const Duration(milliseconds: 340));
  final ValueNotifier<bool> scratch144_aaa_card_switching_uqtxam = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _initRewardList();
  }

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 80.h),
    child: Stack(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "sweet1", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity,),
        ),
        _playWidget(context),
      ],
    ),
  );

  _playWidget(BuildContext context)=>Container(
    margin: EdgeInsets.only(top: 248.h),
    child: ValueListenableBuilder<Duration>(
      valueListenable: scratch144_aaa_card_anim_duration_mpwzqy,
      builder: (BuildContext scratch144_context_jvqpkh, Duration scratch144_duration_wcbxfn, Widget? scratch144_child_ffnqyr,) {
        return ValueListenableBuilder<Offset>(
          valueListenable: scratch144_aaa_card_offset_hqzpmr,
          builder:
              (
              BuildContext scratch144_context_jvqpkh,
              Offset scratch144_offset_mytpvq,
              Widget? scratch144_child_ffnqyr,
              ) {
            return AnimatedSlide(
              offset: scratch144_offset_mytpvq,
              duration: scratch144_duration_wcbxfn,
              curve: Curves.easeInOutCubic,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Scratch144ScratchCardWidgetPwsltd(
                    scratch144_width_qwntvi: double.infinity,
                    scratch144_height_eujpfh: 318.h,
                    scratch144_bottom_widget_fhpgka: _bottomWidget(context),
                    scratch144_cover_image_vlywop: AssetImage("assets/scratch144bsbzmv/sweet2.webp",),
                    scratch144_cover_fit_uqvmxp: BoxFit.fill,
                    scratch144_controller_ptjlwm: controller,
                    scratch144_reveal_threshold_jfudce: 0.7,
                    scratch144_on_cover_hidden_mxqvte: (){
                      _onCoverHide();
                    },
                    scratch144_on_scratch_start_zqjpmr: (){
                      widget.playListener.startPlay(type);
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14.h),
                    child: Scratch144AaaWinUpViewFjweiofjoe(type: type),
                  ),
                ],
              ),
            );
          },
        );
      },
    ),
  );

  _bottomWidget(BuildContext context)=>SizedBox(
    width: double.infinity,
    height: 318.h,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "sweet6", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
        Container(
          width: double.infinity,
          height: 201.h,
          margin: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 60.h),
          child: Stack(
            children: [
              Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "sweet7", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
              Row(
                children: [
                  SizedBox(
                    width: 77.w,
                    height: double.infinity,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: rewardIntList.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index)=>_itemIntWidget(rewardIntList[index]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MasonryGridView.count(
                      padding: const EdgeInsets.all(0),
                      itemCount: rewardList.length,
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index)=>_itemItemWidget(rewardList[index]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );

  _itemIntWidget(int rewardInt)=>Container(
    width: 77.w,
    height: 67.h,
    alignment: Alignment.center,
    child: Scratch144GradientTextFjeofjoe(
      textContent: "$rewardInt",
      textSize: 26.sp,
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Scratch144nwekyj.colorFFDA6E,
          Scratch144nwekyj.colorFFF5AC,
          Scratch144nwekyj.colorFFDA6E,
        ],
      ),
      outlineColor: Scratch144nwekyj.color000000,
      scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.patuaone,
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
              child: Visibility(
                visible: showResult,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Scratch144nwekyj.color000000.withOpacity(0.3),
                  child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "play_guang", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
                ),
              ),
            ),
            Align(
              child: Scratch144BreathWidgetMknqtx(
                scratch144_breath_enable_hztqwp: showResult,
                child: Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: bean.icon, scratch144Widthcpygxw: 62.w, scratch144Heightvnnnnq: 62.h),
              ),
            ),
          ],
        ),
      );
    }
    return SizedBox(
      width: double.infinity,
      height: 67.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: bean.icon, scratch144Widthcpygxw: 62.w, scratch144Heightvnnnnq: 62.h),
          Visibility(
            visible: showResult,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Scratch144nwekyj.color000000.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }

  _initRewardList(){
    rewardList.clear();
    rewardIntList.clear();
    showResult=false;
    final bool scratch144_has_win_hqvptx = Scratch144AaaGameConfigUtilsFjeofjoe.instance.sweetHasWin();

    if (scratch144_has_win_hqvptx) {
      final String scratch144_win_icon_hqvptx = _iconList.random();
      final int scratch144_win_row_index_hqvptx = _scratch144_random_vnhqxt.nextInt(3);
      for (int scratch144_row_index_hqvptx = 0;
          scratch144_row_index_hqvptx < 3;
          scratch144_row_index_hqvptx++) {
        final int scratch144_row_reward_nqvptx =
            Scratch144AaaGameConfigUtilsFjeofjoe.instance.getRewardNum(type);
        rewardIntList.add(scratch144_row_reward_nqvptx);
        if (scratch144_row_index_hqvptx == scratch144_win_row_index_hqvptx) {
          for (int scratch144_index_snxlrd = 0;
              scratch144_index_snxlrd < 3;
              scratch144_index_snxlrd++) {
            rewardList.add(
              Scratch144AaaRewardBeanFeifjoe(
                icon: scratch144_win_icon_hqvptx,
                win: true,
                rewardNum: scratch144_row_reward_nqvptx,
              ),
            );
          }
        } else {
          final List<String> scratch144_row_icons_qvptx =
              _scratch144_build_row_no_three_same_zqvptx();
          for (final String scratch144_icon_hqvptx in scratch144_row_icons_qvptx) {
            rewardList.add(
              Scratch144AaaRewardBeanFeifjoe(
                icon: scratch144_icon_hqvptx,
                win: false,
                rewardNum: scratch144_row_reward_nqvptx,
              ),
            );
          }
        }
      }
    } else {
      for (int scratch144_row_index_hqvptx = 0;
          scratch144_row_index_hqvptx < 3;
          scratch144_row_index_hqvptx++) {
        final int scratch144_row_reward_nqvptx =
            Scratch144AaaGameConfigUtilsFjeofjoe.instance.getRewardNum(type);
        rewardIntList.add(scratch144_row_reward_nqvptx);
        final List<String> scratch144_row_icons_qvptx =
            _scratch144_build_row_no_three_same_zqvptx();
        for (final String scratch144_icon_hqvptx in scratch144_row_icons_qvptx) {
          rewardList.add(
            Scratch144AaaRewardBeanFeifjoe(
              icon: scratch144_icon_hqvptx,
              win: false,
              rewardNum: scratch144_row_reward_nqvptx,
            ),
          );
        }
      }
    }

    setState(() {});
  }

  List<String> _scratch144_build_row_no_three_same_zqvptx() {
    for (int scratch144_try_count_hqvptx = 0;
        scratch144_try_count_hqvptx < 40;
        scratch144_try_count_hqvptx++) {
      final List<String> scratch144_row_icons_qvptx = <String>[
        _iconList.random(),
        _iconList.random(),
        _iconList.random(),
      ];
      final bool scratch144_all_same_hqvptx =
          scratch144_row_icons_qvptx[0] == scratch144_row_icons_qvptx[1] &&
          scratch144_row_icons_qvptx[1] == scratch144_row_icons_qvptx[2];
      if (!scratch144_all_same_hqvptx) {
        return scratch144_row_icons_qvptx;
      }
    }
    return <String>[_iconList[0], _iconList[0], _iconList[1]];
  }

  _onCoverHide()async{
    setState(() {
      showResult=true;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    var list = rewardList.where((value)=>value.win).toList();
    if(list.isEmpty){
      widget.playListener.playResult(type, 0);
    }else{
      widget.playListener.playResult(type, list.first.rewardNum);
    }
  }

  @override
  bool scratch144_init_event_huwxya() => true;

  @override
  void scratch144_handle_event_msg_fhngrw(int eventCode, int? intValue, String? strValue, anyValue) {
    super.scratch144_handle_event_msg_fhngrw(eventCode, intValue, strValue, anyValue);
    switch(eventCode){
      case Scratch144EventCodeLmdqps.aResetPlayView:
        if(anyValue==type){
          _reset();
        }
        break;
      case Scratch144EventCodeLmdqps.aAutoPlay:
        if(anyValue==type){
          _autoPlay();
        }
        break;
    }
  }

  _autoPlay(){
    if (scratch144_aaa_card_switching_uqtxam.value) {
      return;
    }
    controller.scratch144_start_auto_scratch_jdqzmx(
      scratch144_pattern_mode_ystnqe: 4,
      scratch144_tick_delay_ms_nxvrop: 1,
      scratch144_auto_four_bottom_gap_pmxhtw: 134,
      scratch144_auto_track_width_ljuzhx: 30,
    );
  }

  Future<void> _reset() async {
    if (scratch144_aaa_card_switching_uqtxam.value) {
      return;
    }
    scratch144_aaa_card_switching_uqtxam.value = true;
    scratch144_aaa_card_anim_duration_mpwzqy.value = const Duration(
      milliseconds: 320,
    );
    scratch144_aaa_card_offset_hqzpmr.value = const Offset(-1.22, -0.16);
    await Future<void>.delayed(const Duration(milliseconds: 340));
    controller.scratch144_reset_card_wnxkqo();
    scratch144_aaa_card_anim_duration_mpwzqy.value = Duration.zero;
    scratch144_aaa_card_offset_hqzpmr.value = const Offset(1.22, -0.16);
    await Future<void>.delayed(const Duration(milliseconds: 16));
    scratch144_aaa_card_anim_duration_mpwzqy.value = const Duration(
      milliseconds: 340,
    );
    scratch144_aaa_card_offset_hqzpmr.value = Offset.zero;
    await Future<void>.delayed(const Duration(milliseconds: 360));
    scratch144_aaa_card_switching_uqtxam.value = false;
    _initRewardList();
  }
}
