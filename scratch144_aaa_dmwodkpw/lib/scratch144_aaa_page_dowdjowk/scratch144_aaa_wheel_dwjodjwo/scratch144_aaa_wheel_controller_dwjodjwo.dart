import 'dart:async';
import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_win_dialog_fjeifjoej/scratch144_aaa_win_dialog_fjeifjoej.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';

class Scratch144AaaWheelControllerDwjodjwo extends Scratch144ConSspacr {
  final List<int> scratch144_wheel_rewards_hqzvpt = const <int>[
    10,
    10,
    80,
    500,
    10,
    20,
    50,
    100,
  ];
  final Random _scratch144_random_mpqvtx = Random();
  Timer? _scratch144_spin_timer_pqvmtx;

  double scratch144_wheel_angle_qvptxm = 0.0;
  bool scratch144_spinning_hqmvpt = false;
  bool scratch144_show_finger_guide_qmvpt = false;
  int? scratch144_last_reward_qmvptx;
  int? scratch144_last_index_qmvptx;

  String get scratch144_reward_text_vqpmxt {
    if (scratch144_last_reward_qmvptx == null) {
      return "Tap center to spin";
    }
    return "Reward: $scratch144_last_reward_qmvptx";
  }

  Future<int?> clickStart() async {
    if (scratch144_spinning_hqmvpt) {
      return null;
    }
    scratch144_show_finger_guide_qmvpt = false;
    scratch144_spinning_hqmvpt = true;
    update([
      "scratch144_wheel_spin_state_qmvpt",
      "scratch144_wheel_finger_guide_qmvpt",
    ]);

    final int scratch144_target_index_vqpmxt = _scratch144_random_mpqvtx
        .nextInt(scratch144_wheel_rewards_hqzvpt.length);
    final double scratch144_target_angle_uqmvpt =
        _scratch144_calc_target_angle_qmvptx(scratch144_target_index_vqpmxt);
    final double scratch144_total_delta_mqvptx =
        _scratch144_calc_total_delta_wqmvpt(scratch144_target_angle_uqmvpt);

    await _scratch144_start_spin_anim_qmvptx(scratch144_total_delta_mqvptx);

    scratch144_last_index_qmvptx = scratch144_target_index_vqpmxt;
    scratch144_last_reward_qmvptx =
        scratch144_wheel_rewards_hqzvpt[scratch144_target_index_vqpmxt];

    update([
      "scratch144_wheel_spin_state_qmvpt",
      "scratch144_wheel_result_qmpvtx",
    ]);
    await Future.delayed(Duration(milliseconds: 2000));
    scratch144_spinning_hqmvpt = false;
    Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(
      child: Scratch144AaaWinDialogFjeifjoej(
        reward: scratch144_last_reward_qmvptx!,
        callback: () {
          scratch144_show_finger_guide_qmvpt = true;
          update(["scratch144_wheel_finger_guide_qmvpt"]);
        },
      ),
    );
    return scratch144_last_reward_qmvptx;
  }

  Future<void> _scratch144_start_spin_anim_qmvptx(
    double scratch144_total_delta_mqvptx,
  ) {
    const int scratch144_total_ms_qmvptx = 3000;
    const int scratch144_tick_ms_qmvptx = 16;
    final Completer<void> scratch144_completer_qmvptx = Completer<void>();
    final double scratch144_start_angle_qmvptx = scratch144_wheel_angle_qvptxm;
    int scratch144_elapsed_ms_qmvptx = 0;

    _scratch144_spin_timer_pqvmtx?.cancel();
    _scratch144_spin_timer_pqvmtx = Timer.periodic(
      const Duration(milliseconds: scratch144_tick_ms_qmvptx),
      (Timer scratch144_timer_qmvptx) {
        scratch144_elapsed_ms_qmvptx += scratch144_tick_ms_qmvptx;
        final bool scratch144_done_qmvptx =
            scratch144_elapsed_ms_qmvptx >= scratch144_total_ms_qmvptx;
        final double scratch144_progress_qmvptx = scratch144_done_qmvptx
            ? 1.0
            : scratch144_elapsed_ms_qmvptx / scratch144_total_ms_qmvptx;
        final double scratch144_curve_progress_qmvptx = Curves.easeOutCubic
            .transform(scratch144_progress_qmvptx);
        scratch144_wheel_angle_qvptxm =
            scratch144_start_angle_qmvptx +
            scratch144_total_delta_mqvptx * scratch144_curve_progress_qmvptx;
        update(["scratch144_wheel_rotate_qmpvtx"]);
        if (!scratch144_done_qmvptx) {
          return;
        }
        scratch144_timer_qmvptx.cancel();
        _scratch144_spin_timer_pqvmtx = null;
        if (!scratch144_completer_qmvptx.isCompleted) {
          scratch144_completer_qmvptx.complete();
        }
      },
    );
    return scratch144_completer_qmvptx.future;
  }

  double _scratch144_calc_target_angle_qmvptx(
    int scratch144_target_index_vqpmxt,
  ) {
    final double scratch144_segment_angle_qmvptx =
        (2 * pi) / scratch144_wheel_rewards_hqzvpt.length;
    final double scratch144_center_angle_qmvptx =
        -(scratch144_target_index_vqpmxt * scratch144_segment_angle_qmvptx);
    final double scratch144_random_offset_qmvptx =
        (_scratch144_random_mpqvtx.nextDouble() - 0.5) *
        scratch144_segment_angle_qmvptx *
        0.72;
    return scratch144_center_angle_qmvptx + scratch144_random_offset_qmvptx;
  }

  double _scratch144_calc_total_delta_wqmvpt(
    double scratch144_target_angle_uqmvpt,
  ) {
    final double scratch144_start_normal_qmvptx =
        _scratch144_normalize_angle_qmvptx(scratch144_wheel_angle_qvptxm);
    final double scratch144_target_normal_qmvptx =
        _scratch144_normalize_angle_qmvptx(scratch144_target_angle_uqmvpt);
    double scratch144_delta_qmvptx =
        scratch144_target_normal_qmvptx - scratch144_start_normal_qmvptx;
    if (scratch144_delta_qmvptx < 0) {
      scratch144_delta_qmvptx += 2 * pi;
    }
    return scratch144_delta_qmvptx + (2 * pi * 6);
  }

  double _scratch144_normalize_angle_qmvptx(double scratch144_angle_qmvptx) {
    double scratch144_normal_qmvptx = scratch144_angle_qmvptx % (2 * pi);
    if (scratch144_normal_qmvptx < 0) {
      scratch144_normal_qmvptx += 2 * pi;
    }
    return scratch144_normal_qmvptx;
  }

  @override
  void onClose() {
    _scratch144_spin_timer_pqvmtx?.cancel();
    _scratch144_spin_timer_pqvmtx = null;
    super.onClose();
  }
}
