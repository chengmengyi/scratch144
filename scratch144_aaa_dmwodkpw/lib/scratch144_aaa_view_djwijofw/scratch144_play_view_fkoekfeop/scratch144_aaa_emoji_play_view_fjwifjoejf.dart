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

class Scratch144AaaEmojiPlayViewFjwifjoejf
    extends Scratch144StatefulWidgetJmndjv {
  Scratch144AaaPlayListener playListener;
  bool scratch144_show_guide_hand_upnejl;
  Scratch144AaaEmojiPlayViewFjwifjoejf({
    required this.playListener,
    this.scratch144_show_guide_hand_upnejl = false,
  });
  @override
  State<StatefulWidget> createState() =>
      _Scratch144AaaEmojiPlayViewFjwifjoejfState();
}

class _Scratch144AaaEmojiPlayViewFjwifjoejfState
    extends Scratch144Statemubfka<Scratch144AaaEmojiPlayViewFjwifjoejf> {
  final Scratch144CardTypeEnumDwidjow type =
      Scratch144CardTypeEnumDwidjow.emoji;
  final Scratch144ScratchCardControllerPwsltd controller =
      Scratch144ScratchCardControllerPwsltd();
  var showResult = false;
  List<Scratch144AaaRewardBeanFeifjoe> rewardList = [];
  final List<String> _iconList = ["emoji5", "emoji6", "emoji7"];
  final List<List<int>> _scratch144_line_indexes_xkrqpt = const <List<int>>[
    <int>[0, 1, 2],
    <int>[3, 4, 5],
    <int>[6, 7, 8],
    <int>[0, 3, 6],
    <int>[1, 4, 7],
    <int>[2, 5, 8],
    <int>[0, 4, 8],
    <int>[2, 4, 6],
  ];
  String _scratch144_find_icon_cxptqm = "emoji5";

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
    margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 148.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: "emoji1",
          scratch144Widthcpygxw: null,
          scratch144Heightvnnnnq: 150.h,
          boxFit: BoxFit.fitHeight,
        ),
        SizedBox(height: 10.h),
        _playWidget(),
      ],
    ),
  );

  _playWidget() => ValueListenableBuilder<Duration>(
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
                    child: Stack(
                      children: [
                        Scratch144ScratchCardWidgetPwsltd(
                          scratch144_width_qwntvi: double.infinity,
                          scratch144_height_eujpfh: 338.h,
                          scratch144_bottom_widget_fhpgka: _bottomWidget(),
                          scratch144_cover_image_vlywop: AssetImage(
                            "assets/scratch144bsbzmv/emoji2.webp",
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

  _bottomWidget() => SizedBox(
    width: double.infinity,
    height: 338.h,
    child: Stack(
      children: [
        Scratch144LocalImagesWidgetGohzrl(
          scratch144Nametrrwib: "emoji3",
          scratch144Widthcpygxw: double.infinity,
          scratch144Heightvnnnnq: double.infinity,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 231.h,
            margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 64.h),
            child: Stack(
              children: [
                Scratch144LocalImagesWidgetGohzrl(
                  scratch144Nametrrwib: "emoji4",
                  scratch144Widthcpygxw: double.infinity,
                  scratch144Heightvnnnnq: double.infinity,
                ),
                MasonryGridView.count(
                  padding: const EdgeInsets.all(0),
                  itemCount: rewardList.length,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      _itemItemWidget(rewardList[index]),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  _itemItemWidget(Scratch144AaaRewardBeanFeifjoe bean) {
    if (bean.win) {
      return SizedBox(
        width: double.infinity,
        height: 77.h,
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
                    child: Scratch144LocalImagesWidgetGohzrl(
                      scratch144Nametrrwib: bean.icon,
                      scratch144Widthcpygxw: 67.w,
                      scratch144Heightvnnnnq: 67.h,
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
      height: 77.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scratch144LocalImagesWidgetGohzrl(
            scratch144Nametrrwib: bean.icon,
            scratch144Widthcpygxw: 67.w,
            scratch144Heightvnnnnq: 67.h,
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
    rewardList.clear();
    showResult = false;
    final bool scratch144_has_reward_yjpwqx =
        Scratch144AaaGameConfigUtilsFjeofjoe.instance.emojiHasReward();
    final Set<int> scratch144_win_indexes_cxjtrf = <int>{};
    late final List<String> scratch144_icons_jtvxpn;
    if (scratch144_has_reward_yjpwqx) {
      final String scratch144_win_icon_wvprkx = _iconList.random();
      final List<int> scratch144_win_line_pndqmo =
          _scratch144_line_indexes_xkrqpt.random();
      final List<String> scratch144_other_icons_wnpdzu = _iconList
          .where(
            (String scratch144_icon_lqxzfd) =>
                scratch144_icon_lqxzfd != scratch144_win_icon_wvprkx,
          )
          .toList();
      scratch144_icons_jtvxpn = _scratch144_build_board_with_line_tpbqxr(
        scratch144_win_icon_wvprkx: scratch144_win_icon_wvprkx,
        scratch144_win_line_pndqmo: scratch144_win_line_pndqmo,
        scratch144_other_icons_wnpdzu: scratch144_other_icons_wnpdzu,
      );
      scratch144_win_indexes_cxjtrf.addAll(scratch144_win_line_pndqmo);
      _scratch144_find_icon_cxptqm = scratch144_win_icon_wvprkx;
    } else {
      scratch144_icons_jtvxpn = _scratch144_build_board_without_line_yprkqw();
      _scratch144_find_icon_cxptqm = _iconList.random();
    }
    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd < scratch144_icons_jtvxpn.length;
      scratch144_index_snxlrd++
    ) {
      rewardList.add(
        Scratch144AaaRewardBeanFeifjoe(
          icon: scratch144_icons_jtvxpn[scratch144_index_snxlrd],
          win: scratch144_win_indexes_cxjtrf.contains(scratch144_index_snxlrd),
          rewardNum: Scratch144AaaGameConfigUtilsFjeofjoe.instance.getRewardNum(
            type,
          ),
        ),
      );
    }
    setState(() {});
  }

  List<String> _scratch144_build_board_with_line_tpbqxr({
    required String scratch144_win_icon_wvprkx,
    required List<int> scratch144_win_line_pndqmo,
    required List<String> scratch144_other_icons_wnpdzu,
  }) {
    for (
      int scratch144_try_count_mxpkqv = 0;
      scratch144_try_count_mxpkqv < 800;
      scratch144_try_count_mxpkqv++
    ) {
      final List<String> scratch144_board_cwtnqh = List<String>.filled(9, '');
      for (final int scratch144_index_bjwxtm in scratch144_win_line_pndqmo) {
        scratch144_board_cwtnqh[scratch144_index_bjwxtm] =
            scratch144_win_icon_wvprkx;
      }
      for (
        int scratch144_index_snxlrd = 0;
        scratch144_index_snxlrd < scratch144_board_cwtnqh.length;
        scratch144_index_snxlrd++
      ) {
        if (scratch144_board_cwtnqh[scratch144_index_snxlrd].isEmpty) {
          scratch144_board_cwtnqh[scratch144_index_snxlrd] =
              scratch144_other_icons_wnpdzu.random();
        }
      }
      if (_scratch144_is_valid_reward_board_xzqvtr(
        scratch144_board_cwtnqh: scratch144_board_cwtnqh,
        scratch144_win_icon_wvprkx: scratch144_win_icon_wvprkx,
        scratch144_win_line_pndqmo: scratch144_win_line_pndqmo,
      )) {
        return scratch144_board_cwtnqh;
      }
    }

    final List<String> scratch144_fallback_board_cwtnqh = List<String>.filled(
      9,
      scratch144_other_icons_wnpdzu.first,
    );
    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd < scratch144_fallback_board_cwtnqh.length;
      scratch144_index_snxlrd++
    ) {
      if (scratch144_win_line_pndqmo.contains(scratch144_index_snxlrd)) {
        scratch144_fallback_board_cwtnqh[scratch144_index_snxlrd] =
            scratch144_win_icon_wvprkx;
      } else {
        scratch144_fallback_board_cwtnqh[scratch144_index_snxlrd] =
            scratch144_other_icons_wnpdzu[scratch144_index_snxlrd % 2];
      }
    }
    return scratch144_fallback_board_cwtnqh;
  }

  List<String> _scratch144_build_board_without_line_yprkqw() {
    for (
      int scratch144_try_count_mxpkqv = 0;
      scratch144_try_count_mxpkqv < 1000;
      scratch144_try_count_mxpkqv++
    ) {
      final List<String> scratch144_board_cwtnqh = List<String>.generate(
        9,
        (_) => _iconList.random(),
      );
      if (!_scratch144_has_any_same_line_hqztvp(scratch144_board_cwtnqh)) {
        return scratch144_board_cwtnqh;
      }
    }
    return <String>[
      _iconList[0],
      _iconList[1],
      _iconList[2],
      _iconList[1],
      _iconList[2],
      _iconList[0],
      _iconList[2],
      _iconList[0],
      _iconList[1],
    ];
  }

  bool _scratch144_has_any_same_line_hqztvp(
    List<String> scratch144_board_cwtnqh,
  ) {
    for (final List<int> scratch144_line_yqztpk
        in _scratch144_line_indexes_xkrqpt) {
      final String scratch144_first_icon_kxptqo =
          scratch144_board_cwtnqh[scratch144_line_yqztpk[0]];
      if (scratch144_first_icon_kxptqo ==
              scratch144_board_cwtnqh[scratch144_line_yqztpk[1]] &&
          scratch144_first_icon_kxptqo ==
              scratch144_board_cwtnqh[scratch144_line_yqztpk[2]]) {
        return true;
      }
    }
    return false;
  }

  bool _scratch144_is_valid_reward_board_xzqvtr({
    required List<String> scratch144_board_cwtnqh,
    required String scratch144_win_icon_wvprkx,
    required List<int> scratch144_win_line_pndqmo,
  }) {
    for (final List<int> scratch144_line_yqztpk
        in _scratch144_line_indexes_xkrqpt) {
      final String scratch144_first_icon_kxptqo =
          scratch144_board_cwtnqh[scratch144_line_yqztpk[0]];
      final bool scratch144_same_line_zwnptq =
          scratch144_first_icon_kxptqo ==
              scratch144_board_cwtnqh[scratch144_line_yqztpk[1]] &&
          scratch144_first_icon_kxptqo ==
              scratch144_board_cwtnqh[scratch144_line_yqztpk[2]];
      if (!scratch144_same_line_zwnptq) {
        continue;
      }
      final bool scratch144_is_target_line_hxrqwp =
          scratch144_line_yqztpk[0] == scratch144_win_line_pndqmo[0] &&
          scratch144_line_yqztpk[1] == scratch144_win_line_pndqmo[1] &&
          scratch144_line_yqztpk[2] == scratch144_win_line_pndqmo[2];
      if (!scratch144_is_target_line_hxrqwp ||
          scratch144_first_icon_kxptqo != scratch144_win_icon_wvprkx) {
        return false;
      }
    }
    return true;
  }

  String _getFindImage() {
    return _scratch144_find_icon_cxptqm;
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
