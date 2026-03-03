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
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaEmojiPlayViewFjwifjoejf extends Scratch144StatefulWidgetJmndjv{
  Scratch144AaaPlayListener playListener;
  Scratch144AaaEmojiPlayViewFjwifjoejf({
    required this.playListener,
  });
  @override
  State<StatefulWidget> createState() => _Scratch144AaaEmojiPlayViewFjwifjoejfState();
}

class _Scratch144AaaEmojiPlayViewFjwifjoejfState extends Scratch144Statemubfka<Scratch144AaaEmojiPlayViewFjwifjoejf>{
  final Scratch144CardTypeEnumDwidjow type=Scratch144CardTypeEnumDwidjow.emoji;
  final Scratch144ScratchCardControllerPwsltd controller = Scratch144ScratchCardControllerPwsltd();
  var showResult=false;
  List<Scratch144AaaRewardBeanFeifjoe> rewardList=[];
  final List<String> _iconList=["emoji5","emoji6","emoji7"];

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
    margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 148.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "emoji1", scratch144Widthcpygxw: null, scratch144Heightvnnnnq: 150.h,boxFit: BoxFit.fitHeight,),
        SizedBox(height: 10.h,),
        _playWidget(),
      ],
    ),
  );

  _playWidget()=>ValueListenableBuilder<Duration>(
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
              children: [
                Scratch144ScratchCardWidgetPwsltd(
                  scratch144_width_qwntvi: double.infinity,
                  scratch144_height_eujpfh: 338.h,
                  scratch144_bottom_widget_fhpgka: _bottomWidget(),
                  scratch144_cover_image_vlywop: AssetImage("assets/scratch144bsbzmv/emoji2.webp",),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: Scratch144AaaWinUpViewFjweiofjoe(type: type),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );

  _bottomWidget()=>SizedBox(
    width: double.infinity,
    height: 338.h,
    child: Stack(
      children: [
        Scratch144LocalImagesWidgetGohzrl(scratch144Nametrrwib: "emoji3", scratch144Widthcpygxw: double.infinity, scratch144Heightvnnnnq: double.infinity),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 42.h,left: 20.w,right: 20.w),
            child: Scratch144LocalImagesWidgetGohzrl(
              scratch144Nametrrwib: _getFindImage(),
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
            Scratch144BreathWidgetMknqtx(
              scratch144_breath_enable_hztqwp: showResult,
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
                  ),
                ],
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
          Scratch144LocalImagesWidgetGohzrl(
            scratch144Nametrrwib: bean.icon,
            scratch144Widthcpygxw: 54.w,
            scratch144Heightvnnnnq: 54.h,
          ),
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
    Scratch144AaaGameConfigUtilsFjeofjoe.instance.emojiHasReward();
    // rewardList.clear();
    // showResult=false;
    // var rewardNum = Scratch144AaaGameConfigUtilsFjeofjoe.instance.getRewardNum(type);
    // for(var index=0;index<tigerNum;index++){
    //   rewardList.add(Scratch144AaaRewardBeanFeifjoe(icon: "tiger8", win: true, rewardNum: rewardNum));
    // }
    // while(rewardList.length<12){
    //   rewardList.add(Scratch144AaaRewardBeanFeifjoe(icon: _otherIconList.random(), win: false, rewardNum: rewardNum));
    // }
    // rewardList.shuffle();
    // setState(() {});
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
      widget.playListener.playResult(type, list.first.rewardNum*list.length);
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