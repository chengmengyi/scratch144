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

class Scratch144MegaPlayViewFjwifjoejf extends Scratch144StatefulWidgetJmndjv {
  Scratch144AaaPlayListener playListener;
  bool scratch144_show_guide_hand_upnejl;
  Scratch144MegaPlayViewFjwifjoejf({
    required this.playListener,
    this.scratch144_show_guide_hand_upnejl = false,
  });
  @override
  State<StatefulWidget> createState() =>
      _Scratch144MegaPlayViewFjwifjoejfState();
}

class _Scratch144MegaPlayViewFjwifjoejfState
    extends Scratch144Statemubfka<Scratch144MegaPlayViewFjwifjoejf> {
  final Scratch144CardTypeEnumDwidjow type = Scratch144CardTypeEnumDwidjow.mega;
  final Scratch144ScratchCardControllerPwsltd controller =
      Scratch144ScratchCardControllerPwsltd();
  final Random _scratch144_random_qhvpxt = Random();
  var showResult = false;
  List<Scratch144AaaRewardBeanFeifjoe> rewardList1 = [];
  List<Scratch144AaaRewardBeanFeifjoe> rewardList2 = [];
  List<Scratch144AaaRewardBeanFeifjoe> rewardList3 = [];
  List<Scratch144AaaRewardBeanFeifjoe> get rewardList =>
      <Scratch144AaaRewardBeanFeifjoe>[
        ...rewardList1,
        ...rewardList2,
        ...rewardList3,
      ];
  final String _lucky8 = "mega12";
  final List<String> _iconList = [
    "mega4",
    "mega5",
    "mega6",
    "mega7",
    "mega8",
    "mega9",
    "mega10",
  ];
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
    margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 160.h),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: "mega1",
          scratch144Widthcpygxw: null,
          scratch144Heightvnnnnq: 110.h,
          boxFit: BoxFit.fitHeight,
        ),
        _playWidget(context),
        Container(
          margin: EdgeInsets.only(top: 110.h),
          child: Scratch144AaaWinUpViewFjweiofjoe(type: type),
        ),
      ],
    ),
  );

  _playWidget(BuildContext context) => Container(
    margin: EdgeInsets.only(top: 100.h),
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
                        scratch144_height_eujpfh: 358.h,
                        scratch144_bottom_widget_fhpgka: _bottomWidget(context),
                        scratch144_cover_image_vlywop: AssetImage(
                          "assets/scratch144bsbzmv/mega2.webp",
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

  _bottomWidget(BuildContext context) => SizedBox(
    width: double.infinity,
    height: 358.h,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: "mega3",
          scratch144Widthcpygxw: double.infinity,
          scratch144Heightvnnnnq: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 221.h,
          margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 50.h),
          child: Row(
            children: [
              SizedBox(
                width: 60.w,
                height: double.infinity,
                child: Stack(
                  children: [
                    Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: "mega13",
                      scratch144Widthcpygxw: double.infinity,
                      scratch144Heightvnnnnq: double.infinity,
                    ),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: rewardList1.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            _itemItemWidget(rewardList1[index]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 6.w),
              SizedBox(
                width: 60.w,
                height: double.infinity,
                child: Stack(
                  children: [
                    Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: "mega14",
                      scratch144Widthcpygxw: double.infinity,
                      scratch144Heightvnnnnq: double.infinity,
                    ),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: rewardList2.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            _itemItemWidget(rewardList2[index]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Stack(
                  children: [
                    Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: "mega15",
                      scratch144Widthcpygxw: double.infinity,
                      scratch144Heightvnnnnq: double.infinity,
                    ),
                    MasonryGridView.count(
                      padding: const EdgeInsets.all(0),
                      itemCount: rewardList3.length,
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          _itemItemWidget(rewardList3[index]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  _itemItemWidget(Scratch144AaaRewardBeanFeifjoe bean) {
    if (bean.win) {
      return SizedBox(
        width: double.infinity,
        height: 73.h,
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
                    alignment: Alignment.center,
                    child: Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: bean.winLuckyType == 2
                          ? _lucky8
                          : bean.icon,
                      scratch144Widthcpygxw: null,
                      scratch144Heightvnnnnq: bean.icon == "mega8"
                          ? 34.h
                          : 44.h,
                      boxFit: BoxFit.fitHeight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Scratch144GradientTextFjeofjoe(
                      textContent: "${bean.rewardNum}",
                      textSize: 20.sp,
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
      height: 73.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scratch144LocalImagesWidgetGohzrl(
            scratch144Nametrrwib: bean.icon,
            scratch144Widthcpygxw: null,
            scratch144Heightvnnnnq: bean.icon == "mega8" ? 34.h : 44.h,
            boxFit: BoxFit.fitHeight,
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
    rewardList1.clear();
    rewardList2.clear();
    rewardList3.clear();
    showResult = false;

    final bool scratch144_has_8_win_hqvptr =
        Scratch144AaaGameConfigUtilsFjeofjoe.instance.luckyHas8Win();
    final bool scratch144_has_3_icon_win_vqpkzt =
        Scratch144AaaGameConfigUtilsFjeofjoe.instance.luckyHas3IconWin();
    final List<Scratch144AaaRewardBeanFeifjoe?> scratch144_slots_kqvptw =
        List<Scratch144AaaRewardBeanFeifjoe?>.filled(15, null);

    int scratch144_pick_free_slot_gqvptw() {
      final List<int> scratch144_free_indexes_hqvptx = <int>[];
      for (
        int scratch144_index_snxlrd = 0;
        scratch144_index_snxlrd < scratch144_slots_kqvptw.length;
        scratch144_index_snxlrd++
      ) {
        if (scratch144_slots_kqvptw[scratch144_index_snxlrd] == null) {
          scratch144_free_indexes_hqvptx.add(scratch144_index_snxlrd);
        }
      }
      return scratch144_free_indexes_hqvptx[_scratch144_random_qhvpxt.nextInt(
        scratch144_free_indexes_hqvptx.length,
      )];
    }

    if (scratch144_has_8_win_hqvptr) {
      final int scratch144_index_hqvptx = scratch144_pick_free_slot_gqvptw();
      scratch144_slots_kqvptw[scratch144_index_hqvptx] =
          Scratch144AaaRewardBeanFeifjoe(
            icon: _lucky8,
            win: true,
            rewardNum: Scratch144AaaGameConfigUtilsFjeofjoe.instance
                .getRewardNum(type),
            winLuckyType: 2,
          );
    }

    String? scratch144_win_icon_hqvptx;
    if (scratch144_has_3_icon_win_vqpkzt) {
      scratch144_win_icon_hqvptx = _iconList.random();
      for (
        int scratch144_count_xqvptw = 0;
        scratch144_count_xqvptw < 3;
        scratch144_count_xqvptw++
      ) {
        final int scratch144_index_hqvptx = scratch144_pick_free_slot_gqvptw();
        scratch144_slots_kqvptw[scratch144_index_hqvptx] =
            Scratch144AaaRewardBeanFeifjoe(
              icon: scratch144_win_icon_hqvptx!,
              win: true,
              rewardNum: Scratch144AaaGameConfigUtilsFjeofjoe.instance
                  .getRewardNum(type),
              winLuckyType: 1,
            );
      }
    }

    final List<String> scratch144_fill_icons_qhvpxt =
        scratch144_has_3_icon_win_vqpkzt
        ? _iconList
              .where(
                (String scratch144_icon_hqvptx) =>
                    scratch144_icon_hqvptx != scratch144_win_icon_hqvptx,
              )
              .toList()
        : List<String>.from(_iconList);
    final Map<String, int> scratch144_fill_count_jqvptx = <String, int>{
      for (final String icon in scratch144_fill_icons_qhvpxt) icon: 0,
    };

    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd < scratch144_slots_kqvptw.length;
      scratch144_index_snxlrd++
    ) {
      if (scratch144_slots_kqvptw[scratch144_index_snxlrd] != null) {
        continue;
      }
      final List<String> scratch144_candidates_qhvpxt =
          scratch144_fill_icons_qhvpxt
              .where(
                (String icon) => (scratch144_fill_count_jqvptx[icon] ?? 0) < 2,
              )
              .toList();
      final String scratch144_icon_hqvptx =
          scratch144_candidates_qhvpxt.isNotEmpty
          ? scratch144_candidates_qhvpxt.random()
          : scratch144_fill_icons_qhvpxt.random();
      scratch144_fill_count_jqvptx[scratch144_icon_hqvptx] =
          (scratch144_fill_count_jqvptx[scratch144_icon_hqvptx] ?? 0) + 1;
      scratch144_slots_kqvptw[scratch144_index_snxlrd] =
          Scratch144AaaRewardBeanFeifjoe(
            icon: scratch144_icon_hqvptx,
            win: false,
            rewardNum: Scratch144AaaGameConfigUtilsFjeofjoe.instance
                .getRewardNum(type),
            winLuckyType: 0,
          );
    }

    rewardList1 = scratch144_slots_kqvptw
        .sublist(0, 3)
        .cast<Scratch144AaaRewardBeanFeifjoe>();
    rewardList2 = scratch144_slots_kqvptw
        .sublist(3, 6)
        .cast<Scratch144AaaRewardBeanFeifjoe>();
    rewardList3 = scratch144_slots_kqvptw
        .sublist(6, 15)
        .cast<Scratch144AaaRewardBeanFeifjoe>();

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
      var reward = 0;
      var win3List = rewardList
          .where((value) => value.win && value.winLuckyType == 1)
          .toList();
      if (win3List.isNotEmpty) {
        reward += win3List.fold(0, (sum, item) => sum + item.rewardNum);
      }
      var win8List = rewardList
          .where((value) => value.win && value.winLuckyType == 2)
          .toList();
      if (win8List.isNotEmpty) {
        reward += (win8List.fold(0, (sum, item) => sum + item.rewardNum)) * 8;
      }
      widget.playListener.playResult(type, reward);
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
