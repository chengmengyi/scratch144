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

class Scratch144BigGamePlayViewFjwifjoejf
    extends Scratch144StatefulWidgetJmndjv {
  Scratch144AaaPlayListener playListener;
  bool scratch144_show_guide_hand_upnejl;
  Scratch144BigGamePlayViewFjwifjoejf({
    required this.playListener,
    this.scratch144_show_guide_hand_upnejl = false,
  });
  @override
  State<StatefulWidget> createState() =>
      _Scratch144BigGamePlayViewFjwifjoejfState();
}

class _Scratch144BigGamePlayViewFjwifjoejfState
    extends Scratch144Statemubfka<Scratch144BigGamePlayViewFjwifjoejf> {
  final Scratch144CardTypeEnumDwidjow type =
      Scratch144CardTypeEnumDwidjow.bigGame;
  final Scratch144ScratchCardControllerPwsltd controller =
      Scratch144ScratchCardControllerPwsltd();
  final Random _scratch144_random_vnhqxt = Random();
  var showResult = false;
  List<int> winList = [];
  List<Scratch144AaaRewardBeanFeifjoe> rewardList = [];
  final ValueNotifier<Offset> scratch144_aaa_card_offset_hqzpmr =
      ValueNotifier<Offset>(Offset.zero);
  final ValueNotifier<Duration> scratch144_aaa_card_anim_duration_mpwzqy =
      ValueNotifier<Duration>(const Duration(milliseconds: 340));
  final ValueNotifier<bool> scratch144_aaa_card_switching_uqtxam =
      ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _initRewardList();
  }

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 132.h),
    child: Stack(
      children: [
        Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: "big2",
          scratch144Widthcpygxw: null,
          scratch144Heightvnnnnq: 245.h,
          boxFit: BoxFit.fitHeight,
        ),
        Positioned(
          top: 90.h,
          left: 16.w,
          child: Scratch144AaaWinUpViewFjweiofjoe(type: type, row: false),
        ),
        _playWidget(),
      ],
    ),
  );

  _playWidget() => Container(
    margin: EdgeInsets.only(top: 158.h),
    child: ValueListenableBuilder<Duration>(
      valueListenable: scratch144_aaa_card_anim_duration_mpwzqy,
      builder:
          (
            BuildContext scratch144_context_jvqpkh,
            Duration scratch144_duration_wcbxfn,
            Widget? scratch144_child_ffnqyr,
          ) {
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
                      child: Scratch144ScratchCardWidgetPwsltd(
                        scratch144_width_qwntvi: double.infinity,
                        scratch144_height_eujpfh: 378.h,
                        scratch144_bottom_widget_fhpgka: _bottomWidget(),
                        scratch144_cover_image_vlywop: AssetImage(
                          "assets/scratch144bsbzmv/big1.webp",
                        ),
                        scratch144_cover_fit_uqvmxp: BoxFit.fill,
                        scratch144_controller_ptjlwm: controller,
                        scratch144_reveal_threshold_jfudce: 0.7,
                        scratch144_show_guide_hand_upnejl:
                            widget.scratch144_show_guide_hand_upnejl,
                        scratch144_on_cover_hidden_mxqvte: () {
                          _onCoverHide();
                        },
                        scratch144_on_scratch_start_zqjpmr: () {
                          widget.playListener.startPlay(type);
                        },
                      ),
                    );
                  },
            );
          },
    ),
  );

  _bottomWidget() => SizedBox(
    width: double.infinity,
    height: 378.h,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: "big3",
          scratch144Widthcpygxw: double.infinity,
          scratch144Heightvnnnnq: double.infinity,
        ),
        Column(
          children: [
            SizedBox(height: 9.h),
            Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "Winning Numbers",
              scratch144Sizefbwmhh: 24.sp,
              scratch144FontWeightvzszvv: FontWeight.bold,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.color12508C,
              scratch144fontFamilydwedowkd:
                  Scratch144FontFamilydwedowkd.patuaone,
            ),
            SizedBox(height: 4.h),
            Container(
              width: double.infinity,
              height: 50.h,
              margin: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Stack(
                children: [
                  Scratch144LocalImagesWidgetGohzrl(
                    scratch144Nametrrwib: "big4",
                    scratch144Widthcpygxw: double.infinity,
                    scratch144Heightvnnnnq: double.infinity,
                  ),
                  MasonryGridView.count(
                    padding: const EdgeInsets.all(0),
                    itemCount: winList.length,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        _winNumItemWidget(winList[index]),
                  ),
                ],
              ),
            ),
            Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: "You Numbers",
              scratch144Sizefbwmhh: 24.sp,
              scratch144FontWeightvzszvv: FontWeight.bold,
              scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.color12508C,
              scratch144fontFamilydwedowkd:
                  Scratch144FontFamilydwedowkd.patuaone,
            ),
            Container(
              width: double.infinity,
              height: 201.h,
              margin: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Stack(
                children: [
                  Scratch144LocalImagesWidgetGohzrl(
                    scratch144Nametrrwib: "big5",
                    scratch144Widthcpygxw: double.infinity,
                    scratch144Heightvnnnnq: double.infinity,
                  ),
                  MasonryGridView.count(
                    padding: const EdgeInsets.all(0),
                    itemCount: rewardList.length,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        _itemItemWidget(rewardList[index]),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Scratch144GradientTextFjeofjoe(
                  textContent: "Match winning numbers to any of your",
                  textSize: 16.sp,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Scratch144nwekyj.colorFCE791,
                      Scratch144nwekyj.colorFFF8CC,
                      Scratch144nwekyj.colorF8D981,
                    ],
                  ),
                  outlineColor: Scratch144nwekyj.color000000,
                  scratch144fontFamilydwedowkd:
                      Scratch144FontFamilydwedowkd.patuaone,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.h),
                  child: Scratch144GradientTextFjeofjoe(
                    textContent: "numbers to win prize",
                    textSize: 16.sp,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Scratch144nwekyj.colorFCE791,
                        Scratch144nwekyj.colorFFF8CC,
                        Scratch144nwekyj.colorF8D981,
                      ],
                    ),
                    outlineColor: Scratch144nwekyj.color000000,
                    scratch144fontFamilydwedowkd:
                        Scratch144FontFamilydwedowkd.patuaone,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );

  _winNumItemWidget(int data) => Container(
    width: double.infinity,
    height: 50.h,
    alignment: Alignment.center,
    child: Scratch144TextWidgetPcbuin(
      scratch144Textannbiq: "$data",
      scratch144Sizefbwmhh: 40.sp,
      scratch144TextColorrzkydb: Scratch144nwekyj.color07308F,
      scratch144OutLineColorbzjwzh: Scratch144nwekyj.colorFFFFFF,
      scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.flavors,
    ),
  );

  _itemItemWidget(Scratch144AaaRewardBeanFeifjoe bean) {
    if (bean.win) {
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
                  child: Scratch144LocalImagesWidgetGohzrl(
                    scratch144Nametrrwib: "play_guang",
                    scratch144Widthcpygxw: double.infinity,
                    scratch144Heightvnnnnq: double.infinity,
                  ),
                ),
              ),
            ),
            Scratch144BreathWidgetMknqtx(
              scratch144_breath_enable_hztqwp: showResult,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Scratch144TextWidgetPcbuin(
                      scratch144Textannbiq: bean.icon,
                      scratch144Sizefbwmhh: 36.sp,
                      scratch144TextColorrzkydb: Scratch144nwekyj.color07308F,
                      scratch144OutLineColorbzjwzh:
                          Scratch144nwekyj.colorFFFFFF,
                      scratch144fontFamilydwedowkd:
                          Scratch144FontFamilydwedowkd.flavors,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Scratch144GradientTextFjeofjoe(
                      textContent: "${bean.rewardNum}",
                      textSize: 28.sp,
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
                      scratch144fontFamilydwedowkd:
                          Scratch144FontFamilydwedowkd.patuaone,
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
          Align(
            alignment: Alignment.topCenter,
            child: Scratch144TextWidgetPcbuin(
              scratch144Textannbiq: bean.icon,
              scratch144Sizefbwmhh: 36.sp,
              scratch144TextColorrzkydb: Scratch144nwekyj.color07308F,
              scratch144OutLineColorbzjwzh: Scratch144nwekyj.colorFFFFFF,
              scratch144fontFamilydwedowkd:
                  Scratch144FontFamilydwedowkd.flavors,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Scratch144GradientTextFjeofjoe(
              textContent: "${bean.rewardNum}",
              textSize: 28.sp,
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
              scratch144fontFamilydwedowkd:
                  Scratch144FontFamilydwedowkd.patuaone,
            ),
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

  _initRewardList() {
    final List<int> scratch144_all_numbers_hxpmtq = List<int>.generate(
      99,
      (int index) => index + 1,
    )..shuffle(_scratch144_random_vnhqxt);
    winList = scratch144_all_numbers_hxpmtq.take(3).toList();

    rewardList.clear();
    showResult = false;
    final bool scratch144_has_reward_mxvqpz =
        Scratch144AaaGameConfigUtilsFjeofjoe.instance.bigGameHasReward();
    final int scratch144_win_match_count_pkztqv = scratch144_has_reward_mxvqpz
        ? _scratch144_random_vnhqxt.nextInt(3) + 1
        : 0;
    final Set<int> scratch144_win_indexes_hqjptw = <int>{};
    while (scratch144_win_indexes_hqjptw.length <
        scratch144_win_match_count_pkztqv) {
      scratch144_win_indexes_hqjptw.add(_scratch144_random_vnhqxt.nextInt(12));
    }

    final List<int> scratch144_non_win_pool_zhqpmw = List<int>.generate(
      99,
      (int index) => index + 1,
    ).where((int value) => !winList.contains(value)).toList();

    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd < 12;
      scratch144_index_snxlrd++
    ) {
      final bool scratch144_is_win_hqnvzt = scratch144_win_indexes_hqjptw
          .contains(scratch144_index_snxlrd);
      final int scratch144_number_vxqptw = scratch144_is_win_hqnvzt
          ? winList[_scratch144_random_vnhqxt.nextInt(winList.length)]
          : scratch144_non_win_pool_zhqpmw[_scratch144_random_vnhqxt.nextInt(
              scratch144_non_win_pool_zhqpmw.length,
            )];
      rewardList.add(
        Scratch144AaaRewardBeanFeifjoe(
          icon: "$scratch144_number_vxqptw",
          win: scratch144_is_win_hqnvzt,
          rewardNum: Scratch144AaaGameConfigUtilsFjeofjoe.instance.getRewardNum(
            type,
          ),
        ),
      );
    }

    setState(() {});
  }

  _onCoverHide() async {
    setState(() {
      showResult = true;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    var list = rewardList.where((value) => value.win).toList();
    if (list.isEmpty) {
      widget.playListener.playResult(type, 0);
    } else {
      widget.playListener.playResult(type, list.first.rewardNum * list.length);
    }
  }

  @override
  bool scratch144_init_event_huwxya() => true;

  @override
  void scratch144_handle_event_msg_fhngrw(
    int eventCode,
    int? intValue,
    String? strValue,
    anyValue,
  ) {
    super.scratch144_handle_event_msg_fhngrw(
      eventCode,
      intValue,
      strValue,
      anyValue,
    );
    switch (eventCode) {
      case Scratch144EventCodeLmdqps.aResetPlayView:
        if (anyValue == type) {
          _reset();
        }
        break;
      case Scratch144EventCodeLmdqps.aAutoPlay:
        if (anyValue == type) {
          _autoPlay();
        }
        break;
    }
  }

  _autoPlay() {
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
