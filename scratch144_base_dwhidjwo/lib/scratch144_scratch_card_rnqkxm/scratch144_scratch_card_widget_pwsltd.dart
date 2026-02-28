import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class Scratch144ScratchCardControllerPwsltd {
  Future<void> Function(int)? _scratch144_start_auto_delegate_hmjpof;
  VoidCallback? _scratch144_reset_delegate_sgxqwu;

  void scratch144_bind_delegate_zfryvh({
    required Future<void> Function(int) scratch144_start_auto_delegate_hmjpof,
    required VoidCallback scratch144_reset_delegate_sgxqwu,
  }) {
    _scratch144_start_auto_delegate_hmjpof =
        scratch144_start_auto_delegate_hmjpof;
    _scratch144_reset_delegate_sgxqwu = scratch144_reset_delegate_sgxqwu;
  }

  void scratch144_unbind_delegate_fswxla() {
    _scratch144_start_auto_delegate_hmjpof = null;
    _scratch144_reset_delegate_sgxqwu = null;
  }

  Future<void> scratch144_start_auto_scratch_jdqzmx({
    required int scratch144_pattern_mode_ystnqe,
  }) async {
    await _scratch144_start_auto_delegate_hmjpof?.call(
      scratch144_pattern_mode_ystnqe,
    );
  }

  void scratch144_reset_card_wnxkqo() {
    _scratch144_reset_delegate_sgxqwu?.call();
  }
}

class Scratch144ScratchCardWidgetPwsltd extends StatefulWidget {
  const Scratch144ScratchCardWidgetPwsltd({
    super.key,
    required this.scratch144_bottom_widget_fhpgka,
    required this.scratch144_cover_image_vlywop,
    this.scratch144_width_qwntvi,
    this.scratch144_height_eujpfh,
    this.scratch144_brush_radius_wzctmk = 22,
    this.scratch144_reveal_threshold_jfudce = 0.48,
    this.scratch144_border_radius_pxkzmr,
    this.scratch144_on_reveal_nivktr,
    this.scratch144_controller_ptjlwm,
  });

  final Widget scratch144_bottom_widget_fhpgka;
  final ImageProvider<Object> scratch144_cover_image_vlywop;
  final double? scratch144_width_qwntvi;
  final double? scratch144_height_eujpfh;
  final double scratch144_brush_radius_wzctmk;
  final double scratch144_reveal_threshold_jfudce;
  final BorderRadius? scratch144_border_radius_pxkzmr;
  final VoidCallback? scratch144_on_reveal_nivktr;
  final Scratch144ScratchCardControllerPwsltd? scratch144_controller_ptjlwm;

  @override
  State<Scratch144ScratchCardWidgetPwsltd> createState() =>
      _Scratch144ScratchCardWidgetPwsltdState();
}

class _Scratch144ScratchCardWidgetPwsltdState
    extends State<Scratch144ScratchCardWidgetPwsltd> {
  static const double _scratch144_grid_size_uqctms = 14;

  final List<Offset?> _scratch144_points_qjoklt = <Offset?>[];
  final Set<int> _scratch144_cells_xgmuki = <int>{};

  ui.Image? _scratch144_cover_image_htmrpa;
  ImageStream? _scratch144_image_stream_jofmwb;
  ImageStreamListener? _scratch144_image_listener_qfbtzo;

  Size _scratch144_view_size_nrcpmx = Size.zero;
  bool _scratch144_revealed_uzdykl = false;
  double _scratch144_cover_opacity_mqzvhr = 1;
  int _scratch144_auto_token_dvibyk = 0;

  @override
  void initState() {
    super.initState();
    _scratch144_resolve_cover_image_dtimyl();
    widget.scratch144_controller_ptjlwm?.scratch144_bind_delegate_zfryvh(
      scratch144_start_auto_delegate_hmjpof:
          _scratch144_start_auto_scratch_vewrnm,
      scratch144_reset_delegate_sgxqwu: _scratch144_reset_card_fqevyh,
    );
  }

  @override
  void didUpdateWidget(covariant Scratch144ScratchCardWidgetPwsltd oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scratch144_cover_image_vlywop !=
        widget.scratch144_cover_image_vlywop) {
      _scratch144_remove_image_listener_jwdhns();
      _scratch144_cover_image_htmrpa = null;
      _scratch144_resolve_cover_image_dtimyl();
    }
    if (oldWidget.scratch144_controller_ptjlwm !=
        widget.scratch144_controller_ptjlwm) {
      oldWidget.scratch144_controller_ptjlwm
          ?.scratch144_unbind_delegate_fswxla();
      widget.scratch144_controller_ptjlwm?.scratch144_bind_delegate_zfryvh(
        scratch144_start_auto_delegate_hmjpof:
            _scratch144_start_auto_scratch_vewrnm,
        scratch144_reset_delegate_sgxqwu: _scratch144_reset_card_fqevyh,
      );
    }
  }

  @override
  void dispose() {
    widget.scratch144_controller_ptjlwm?.scratch144_unbind_delegate_fswxla();
    _scratch144_remove_image_listener_jwdhns();
    super.dispose();
  }

  void _scratch144_remove_image_listener_jwdhns() {
    final ImageStream? scratch144_stream_iubqzn =
        _scratch144_image_stream_jofmwb;
    final ImageStreamListener? scratch144_listener_mdzfwu =
        _scratch144_image_listener_qfbtzo;
    if (scratch144_stream_iubqzn != null &&
        scratch144_listener_mdzfwu != null) {
      scratch144_stream_iubqzn.removeListener(scratch144_listener_mdzfwu);
    }
    _scratch144_image_stream_jofmwb = null;
    _scratch144_image_listener_qfbtzo = null;
  }

  void _scratch144_resolve_cover_image_dtimyl() {
    final ImageStream scratch144_stream_oxtswh = widget
        .scratch144_cover_image_vlywop
        .resolve(const ImageConfiguration());
    final ImageStreamListener scratch144_listener_rfkapc = ImageStreamListener((
      ImageInfo scratch144_info_xoeqhb,
      bool scratch144_sync_vmkndw,
    ) {
      if (!mounted) {
        return;
      }
      setState(() {
        _scratch144_cover_image_htmrpa = scratch144_info_xoeqhb.image;
      });
    });
    scratch144_stream_oxtswh.addListener(scratch144_listener_rfkapc);
    _scratch144_image_stream_jofmwb = scratch144_stream_oxtswh;
    _scratch144_image_listener_qfbtzo = scratch144_listener_rfkapc;
  }

  void _scratch144_reset_card_fqevyh() {
    _scratch144_auto_token_dvibyk++;
    if (!mounted) {
      return;
    }
    setState(() {
      _scratch144_points_qjoklt.clear();
      _scratch144_cells_xgmuki.clear();
      _scratch144_revealed_uzdykl = false;
      _scratch144_cover_opacity_mqzvhr = 1;
    });
  }

  Future<void> _scratch144_start_auto_scratch_vewrnm(
    int scratch144_pattern_mode_ystnqe,
  ) async {
    if (_scratch144_view_size_nrcpmx == Size.zero) {
      return;
    }
    final List<Offset?> scratch144_path_iyqpnd =
        _scratch144_build_pattern_path_lqvwca(scratch144_pattern_mode_ystnqe);
    if (scratch144_path_iyqpnd.isEmpty) {
      return;
    }

    _scratch144_auto_token_dvibyk++;
    final int scratch144_run_token_hxzfqc = _scratch144_auto_token_dvibyk;
    final Duration scratch144_tick_delay_jeqkmu =
        scratch144_pattern_mode_ystnqe == 3
        ? const Duration(milliseconds: 6)
        : const Duration(milliseconds: 12);
    for (final Offset? scratch144_point_jlgtnk in scratch144_path_iyqpnd) {
      if (!mounted ||
          scratch144_run_token_hxzfqc != _scratch144_auto_token_dvibyk) {
        return;
      }
      if (_scratch144_revealed_uzdykl) {
        return;
      }
      if (scratch144_point_jlgtnk == null) {
        _scratch144_handle_pan_end_yrkcqm();
      } else {
        _scratch144_handle_pan_update_yhprwu(scratch144_point_jlgtnk);
      }
      await Future<void>.delayed(scratch144_tick_delay_jeqkmu);
    }
    _scratch144_handle_pan_end_yrkcqm();
  }

  List<Offset?> _scratch144_build_pattern_path_lqvwca(
    int scratch144_pattern_mode_ystnqe,
  ) {
    switch (scratch144_pattern_mode_ystnqe) {
      case 1:
        return _scratch144_pattern_row_zigzag_udgkfp();
      case 2:
        return _scratch144_pattern_column_zigzag_rtmqpb();
      case 3:
        return _scratch144_pattern_spiral_vdfmru();
      case 4:
        return _scratch144_pattern_cross_hatch_dgzqeu();
      default:
        return <Offset?>[];
    }
  }

  List<Offset?> _scratch144_pattern_row_zigzag_udgkfp() {
    final double scratch144_step_kjrsuz = math.max(
      widget.scratch144_brush_radius_wzctmk * 0.56,
      6,
    );
    final List<Offset> scratch144_waypoints_wqfubv =
        _scratch144_build_row_chain_waypoints_tqecnj();
    return _scratch144_build_polyline_stroke_xfjbqc(
      scratch144_waypoints_wqfubv,
      scratch144_step_kjrsuz,
    );
  }

  List<Offset?> _scratch144_pattern_column_zigzag_rtmqpb() {
    final double scratch144_step_kjrsuz = math.max(
      widget.scratch144_brush_radius_wzctmk * 0.56,
      6,
    );
    final List<Offset> scratch144_base_waypoints_oxjnpf =
        _scratch144_build_row_chain_waypoints_tqecnj(
          scratch144_row_gap_scale_hpvkjn: 1.4,
        );
    final Offset scratch144_center_vrmzot = Offset(
      _scratch144_view_size_nrcpmx.width / 2,
      _scratch144_view_size_nrcpmx.height / 2,
    );
    final List<Offset> scratch144_rotated_waypoints_zhmtpk =
        _scratch144_rotate_waypoints_hmeqvu(
          scratch144_base_waypoints_oxjnpf,
          scratch144_center_vrmzot,
          math.pi / 2,
        );
    final List<Offset> scratch144_ordered_waypoints_wzqfxy =
        scratch144_rotated_waypoints_zhmtpk.reversed.toList();
    return _scratch144_build_polyline_stroke_xfjbqc(
      scratch144_ordered_waypoints_wzqfxy,
      scratch144_step_kjrsuz,
    );
  }

  List<Offset> _scratch144_build_row_chain_waypoints_tqecnj({
    double scratch144_row_gap_scale_hpvkjn = 1,
  }) {
    final double scratch144_width_iurbkz = _scratch144_view_size_nrcpmx.width;
    final double scratch144_height_hvotac = _scratch144_view_size_nrcpmx.height;
    final double scratch144_path_width_zyfqmp = math.min<double>(
      150,
      scratch144_width_iurbkz * 0.92,
    );
    final double scratch144_top_y_vhzpqa = (50.0)
        .clamp(0.0, math.max(0.0, scratch144_height_hvotac - 1))
        .toDouble();
    final double scratch144_available_height_xjvgpu = math.max(
      24,
      scratch144_height_hvotac - scratch144_top_y_vhzpqa - 8,
    );
    final double scratch144_path_height_pfowmu = math.min(
      scratch144_height_hvotac * 0.78,
      scratch144_available_height_xjvgpu,
    );
    final double scratch144_left_x_brywus = (50.0)
        .clamp(0.0, math.max(0.0, scratch144_width_iurbkz - 2))
        .toDouble();
    final double scratch144_right_x_qcbjpm = math.min(
      scratch144_width_iurbkz - 1,
      scratch144_left_x_brywus + scratch144_path_width_zyfqmp,
    );
    final double scratch144_bottom_y_jdkwxv =
        scratch144_top_y_vhzpqa + scratch144_path_height_pfowmu;
    final double scratch144_row_gap_zyjtmx =
        math.max(widget.scratch144_brush_radius_wzctmk * 1.6, 28) *
        scratch144_row_gap_scale_hpvkjn;
    final List<Offset> scratch144_waypoints_wqfubv = <Offset>[];
    double scratch144_current_y_geywxj = scratch144_top_y_vhzpqa;
    scratch144_waypoints_wqfubv.add(
      Offset(scratch144_left_x_brywus, scratch144_current_y_geywxj),
    );
    while (scratch144_current_y_geywxj <= scratch144_bottom_y_jdkwxv) {
      scratch144_waypoints_wqfubv.add(
        Offset(scratch144_right_x_qcbjpm, scratch144_current_y_geywxj),
      );
      final double scratch144_next_y_dwimqu =
          scratch144_current_y_geywxj + scratch144_row_gap_zyjtmx;
      if (scratch144_next_y_dwimqu > scratch144_bottom_y_jdkwxv) {
        break;
      }
      scratch144_waypoints_wqfubv.add(
        Offset(scratch144_left_x_brywus, scratch144_next_y_dwimqu),
      );
      scratch144_current_y_geywxj = scratch144_next_y_dwimqu;
    }
    if (scratch144_waypoints_wqfubv.length >= 2) {
      final Offset scratch144_last_point_jxzhfw =
          scratch144_waypoints_wqfubv.last;
      final Offset scratch144_prev_point_wzngho =
          scratch144_waypoints_wqfubv[scratch144_waypoints_wqfubv.length - 2];
      final double scratch144_delta_x_ynbcje =
          scratch144_last_point_jxzhfw.dx - scratch144_prev_point_wzngho.dx;
      if (scratch144_delta_x_ynbcje.abs() > 0.01) {
        final double scratch144_tail_y_npjrxt = math.min(
          scratch144_bottom_y_jdkwxv,
          scratch144_last_point_jxzhfw.dy + scratch144_row_gap_zyjtmx,
        );
        scratch144_waypoints_wqfubv.add(
          Offset(scratch144_left_x_brywus, scratch144_tail_y_npjrxt),
        );
        scratch144_waypoints_wqfubv.add(
          Offset(scratch144_right_x_qcbjpm, scratch144_tail_y_npjrxt),
        );
      }
    }
    return scratch144_waypoints_wqfubv;
  }

  List<Offset?> _scratch144_pattern_spiral_vdfmru() {
    final List<Offset> scratch144_waypoints_wqfubv = <Offset>[];
    final Offset scratch144_center_vrmzot = Offset(
      _scratch144_view_size_nrcpmx.width / 2,
      _scratch144_view_size_nrcpmx.height / 2,
    );
    final double scratch144_max_radius_pxgajm =
        math.min(
          _scratch144_view_size_nrcpmx.width,
          _scratch144_view_size_nrcpmx.height,
        ) /
        2;
    const int scratch144_count_vhyplq = 120;
    const double scratch144_turns_uexrgn = 5.5;
    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd <= scratch144_count_vhyplq;
      scratch144_index_snxlrd++
    ) {
      final double scratch144_t_nezphc =
          scratch144_index_snxlrd / scratch144_count_vhyplq;
      final double scratch144_angle_qnwyzt =
          scratch144_t_nezphc * scratch144_turns_uexrgn * 2 * math.pi;
      final double scratch144_radius_safwoj =
          scratch144_t_nezphc * scratch144_max_radius_pxgajm;
      scratch144_waypoints_wqfubv.add(
        Offset(
          scratch144_center_vrmzot.dx +
              math.cos(scratch144_angle_qnwyzt) * scratch144_radius_safwoj,
          scratch144_center_vrmzot.dy +
              math.sin(scratch144_angle_qnwyzt) * scratch144_radius_safwoj,
        ),
      );
    }
    return _scratch144_build_polyline_stroke_xfjbqc(
      scratch144_waypoints_wqfubv,
      math.max(widget.scratch144_brush_radius_wzctmk * 0.52, 6),
    );
  }

  List<Offset?> _scratch144_pattern_cross_hatch_dgzqeu() {
    final double scratch144_step_kjrsuz = math.max(
      widget.scratch144_brush_radius_wzctmk * 0.54,
      6,
    );
    final List<Offset> scratch144_base_waypoints_oxjnpf =
        _scratch144_build_row_chain_waypoints_tqecnj(
          scratch144_row_gap_scale_hpvkjn: 1.25,
        );
    final Offset scratch144_center_vrmzot = Offset(
      _scratch144_view_size_nrcpmx.width / 2,
      _scratch144_view_size_nrcpmx.height / 2,
    );
    final List<Offset> scratch144_rotate_z_nsfuqj =
        _scratch144_rotate_waypoints_hmeqvu(
          scratch144_base_waypoints_oxjnpf,
          scratch144_center_vrmzot,
          -65 * math.pi / 180,
        );
    final List<Offset> scratch144_expand_z_yhqtju =
        _scratch144_scale_waypoints_qwztmd(
          scratch144_rotate_z_nsfuqj,
          scratch144_center_vrmzot,
          1.24,
        );
    return _scratch144_build_polyline_stroke_xfjbqc(
      scratch144_expand_z_yhqtju,
      scratch144_step_kjrsuz,
    );
  }

  List<Offset> _scratch144_scale_waypoints_qwztmd(
    List<Offset> scratch144_waypoints_wqfubv,
    Offset scratch144_center_vrmzot,
    double scratch144_scale_jtzmwp,
  ) {
    return scratch144_waypoints_wqfubv.map((Offset scratch144_point_jlgtnk) {
      final Offset scratch144_delta_chopnb =
          scratch144_point_jlgtnk - scratch144_center_vrmzot;
      return _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_vrmzot.dx +
              (scratch144_delta_chopnb.dx * scratch144_scale_jtzmwp),
          scratch144_center_vrmzot.dy +
              (scratch144_delta_chopnb.dy * scratch144_scale_jtzmwp),
        ),
      );
    }).toList();
  }

  List<Offset> _scratch144_build_horizontal_z_waypoints_yfqtvw(
    double scratch144_center_x_ufgyvb,
    double scratch144_center_y_lqtkmv,
    double scratch144_width_span_neyjzf,
    double scratch144_height_span_gxuyfl,
  ) {
    final double scratch144_half_width_vdoyup =
        scratch144_width_span_neyjzf / 2;
    final double scratch144_half_height_psymbu =
        scratch144_height_span_gxuyfl / 2;
    return <Offset>[
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb - scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv - scratch144_half_height_psymbu,
        ),
      ),
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb + scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv - scratch144_half_height_psymbu,
        ),
      ),
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb - scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv + scratch144_half_height_psymbu,
        ),
      ),
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb + scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv + scratch144_half_height_psymbu,
        ),
      ),
    ];
  }

  List<Offset> _scratch144_build_vertical_z_waypoints_zwubcn(
    double scratch144_center_x_ufgyvb,
    double scratch144_center_y_lqtkmv,
    double scratch144_width_span_neyjzf,
    double scratch144_height_span_gxuyfl,
  ) {
    final double scratch144_half_width_vdoyup =
        scratch144_width_span_neyjzf / 2;
    final double scratch144_half_height_psymbu =
        scratch144_height_span_gxuyfl / 2;
    return <Offset>[
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb - scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv - scratch144_half_height_psymbu,
        ),
      ),
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb - scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv + scratch144_half_height_psymbu,
        ),
      ),
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb + scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv - scratch144_half_height_psymbu,
        ),
      ),
      _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_x_ufgyvb + scratch144_half_width_vdoyup,
          scratch144_center_y_lqtkmv + scratch144_half_height_psymbu,
        ),
      ),
    ];
  }

  List<Offset> _scratch144_rotate_waypoints_hmeqvu(
    List<Offset> scratch144_waypoints_wqfubv,
    Offset scratch144_center_vrmzot,
    double scratch144_angle_qnwyzt,
  ) {
    final double scratch144_cos_wyualm = math.cos(scratch144_angle_qnwyzt);
    final double scratch144_sin_gpxwoe = math.sin(scratch144_angle_qnwyzt);
    return scratch144_waypoints_wqfubv.map((Offset scratch144_point_jlgtnk) {
      final Offset scratch144_delta_chopnb =
          scratch144_point_jlgtnk - scratch144_center_vrmzot;
      return _scratch144_clamp_offset_xovpkm(
        Offset(
          scratch144_center_vrmzot.dx +
              (scratch144_delta_chopnb.dx * scratch144_cos_wyualm) -
              (scratch144_delta_chopnb.dy * scratch144_sin_gpxwoe),
          scratch144_center_vrmzot.dy +
              (scratch144_delta_chopnb.dx * scratch144_sin_gpxwoe) +
              (scratch144_delta_chopnb.dy * scratch144_cos_wyualm),
        ),
      );
    }).toList();
  }

  Offset _scratch144_clamp_offset_xovpkm(Offset scratch144_offset_wcfuaz) {
    return Offset(
      scratch144_offset_wcfuaz.dx
          .clamp(0.0, _scratch144_view_size_nrcpmx.width)
          .toDouble(),
      scratch144_offset_wcfuaz.dy
          .clamp(0.0, _scratch144_view_size_nrcpmx.height)
          .toDouble(),
    );
  }

  List<Offset> _scratch144_build_line_points_nrcyvk(
    Offset scratch144_start_ndkrxu,
    Offset scratch144_end_kxclzu,
    double scratch144_step_kjrsuz,
  ) {
    final double scratch144_distance_nluqgj =
        (scratch144_end_kxclzu - scratch144_start_ndkrxu).distance;
    final int scratch144_count_vhyplq = math.max(
      1,
      (scratch144_distance_nluqgj / scratch144_step_kjrsuz).ceil(),
    );
    final List<Offset> scratch144_points_dhztjg = <Offset>[];
    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd <= scratch144_count_vhyplq;
      scratch144_index_snxlrd++
    ) {
      final double scratch144_t_nezphc =
          scratch144_index_snxlrd / scratch144_count_vhyplq;
      scratch144_points_dhztjg.add(
        Offset(
          ui.lerpDouble(
                scratch144_start_ndkrxu.dx,
                scratch144_end_kxclzu.dx,
                scratch144_t_nezphc,
              ) ??
              scratch144_start_ndkrxu.dx,
          ui.lerpDouble(
                scratch144_start_ndkrxu.dy,
                scratch144_end_kxclzu.dy,
                scratch144_t_nezphc,
              ) ??
              scratch144_start_ndkrxu.dy,
        ),
      );
    }
    return scratch144_points_dhztjg;
  }

  List<Offset?> _scratch144_build_polyline_stroke_xfjbqc(
    List<Offset> scratch144_waypoints_wqfubv,
    double scratch144_step_kjrsuz,
  ) {
    if (scratch144_waypoints_wqfubv.length < 2) {
      return <Offset?>[];
    }
    final List<Offset?> scratch144_points_dhztjg = <Offset?>[];
    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd < scratch144_waypoints_wqfubv.length - 1;
      scratch144_index_snxlrd++
    ) {
      final List<Offset> scratch144_segment_wpnzva =
          _scratch144_build_line_points_nrcyvk(
            scratch144_waypoints_wqfubv[scratch144_index_snxlrd],
            scratch144_waypoints_wqfubv[scratch144_index_snxlrd + 1],
            scratch144_step_kjrsuz,
          );
      if (scratch144_segment_wpnzva.isEmpty) {
        continue;
      }
      if (scratch144_points_dhztjg.isNotEmpty) {
        scratch144_points_dhztjg.addAll(scratch144_segment_wpnzva.skip(1));
      } else {
        scratch144_points_dhztjg.addAll(scratch144_segment_wpnzva);
      }
    }
    scratch144_points_dhztjg.add(null);
    return scratch144_points_dhztjg;
  }

  void _scratch144_handle_pan_update_yhprwu(Offset scratch144_offset_wcfuaz) {
    if (_scratch144_revealed_uzdykl ||
        _scratch144_view_size_nrcpmx == Size.zero) {
      return;
    }

    final double scratch144_dx_ckotfs = scratch144_offset_wcfuaz.dx;
    final double scratch144_dy_alzqet = scratch144_offset_wcfuaz.dy;
    if (scratch144_dx_ckotfs < 0 ||
        scratch144_dy_alzqet < 0 ||
        scratch144_dx_ckotfs > _scratch144_view_size_nrcpmx.width ||
        scratch144_dy_alzqet > _scratch144_view_size_nrcpmx.height) {
      return;
    }

    setState(() {
      _scratch144_points_qjoklt.add(scratch144_offset_wcfuaz);
      _scratch144_mark_cells_juncmr(scratch144_offset_wcfuaz);
    });
  }

  void _scratch144_handle_pan_end_yrkcqm() {
    if (_scratch144_revealed_uzdykl) {
      return;
    }
    setState(() {
      _scratch144_points_qjoklt.add(null);
    });
  }

  void _scratch144_mark_cells_juncmr(Offset scratch144_center_ofekyh) {
    final int scratch144_cols_bzfruy =
        (_scratch144_view_size_nrcpmx.width / _scratch144_grid_size_uqctms)
            .ceil();
    final int scratch144_rows_jnvaeq =
        (_scratch144_view_size_nrcpmx.height / _scratch144_grid_size_uqctms)
            .ceil();
    if (scratch144_cols_bzfruy <= 0 || scratch144_rows_jnvaeq <= 0) {
      return;
    }

    final int scratch144_center_col_xrdqzi =
        (scratch144_center_ofekyh.dx / _scratch144_grid_size_uqctms).floor();
    final int scratch144_center_row_xkpvow =
        (scratch144_center_ofekyh.dy / _scratch144_grid_size_uqctms).floor();
    final int scratch144_range_sjmxly =
        (widget.scratch144_brush_radius_wzctmk / _scratch144_grid_size_uqctms)
            .ceil() +
        1;

    for (
      int scratch144_col_rzvxhn =
          scratch144_center_col_xrdqzi - scratch144_range_sjmxly;
      scratch144_col_rzvxhn <=
          scratch144_center_col_xrdqzi + scratch144_range_sjmxly;
      scratch144_col_rzvxhn++
    ) {
      if (scratch144_col_rzvxhn < 0 ||
          scratch144_col_rzvxhn >= scratch144_cols_bzfruy) {
        continue;
      }
      for (
        int scratch144_row_oxqjli =
            scratch144_center_row_xkpvow - scratch144_range_sjmxly;
        scratch144_row_oxqjli <=
            scratch144_center_row_xkpvow + scratch144_range_sjmxly;
        scratch144_row_oxqjli++
      ) {
        if (scratch144_row_oxqjli < 0 ||
            scratch144_row_oxqjli >= scratch144_rows_jnvaeq) {
          continue;
        }
        final double scratch144_cell_center_x_nvbqtr =
            (scratch144_col_rzvxhn + 0.5) * _scratch144_grid_size_uqctms;
        final double scratch144_cell_center_y_vdczrx =
            (scratch144_row_oxqjli + 0.5) * _scratch144_grid_size_uqctms;
        final double scratch144_distance_nluqgj = math.sqrt(
          math.pow(
                scratch144_cell_center_x_nvbqtr - scratch144_center_ofekyh.dx,
                2,
              ) +
              math.pow(
                scratch144_cell_center_y_vdczrx - scratch144_center_ofekyh.dy,
                2,
              ),
        );
        if (scratch144_distance_nluqgj <=
            widget.scratch144_brush_radius_wzctmk +
                (_scratch144_grid_size_uqctms / 2)) {
          _scratch144_cells_xgmuki.add(
            (scratch144_row_oxqjli * scratch144_cols_bzfruy) +
                scratch144_col_rzvxhn,
          );
        }
      }
    }

    final int scratch144_total_cells_tkbymp =
        scratch144_cols_bzfruy * scratch144_rows_jnvaeq;
    if (scratch144_total_cells_tkbymp <= 0) {
      return;
    }
    final double scratch144_progress_qtwyco =
        _scratch144_cells_xgmuki.length / scratch144_total_cells_tkbymp;
    if (scratch144_progress_qtwyco >=
        widget.scratch144_reveal_threshold_jfudce) {
      _scratch144_revealed_uzdykl = true;
      _scratch144_points_qjoklt.clear();
      _scratch144_cover_opacity_mqzvhr = 1;
      widget.scratch144_on_reveal_nivktr?.call();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || !_scratch144_revealed_uzdykl) {
          return;
        }
        setState(() {
          _scratch144_cover_opacity_mqzvhr = 0;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:
          (
            BuildContext scratch144_context_bfeqmu,
            BoxConstraints scratch144_constraints_vgnuqt,
          ) {
            final double scratch144_width_iurbkz =
                widget.scratch144_width_qwntvi ??
                (scratch144_constraints_vgnuqt.maxWidth.isFinite
                    ? scratch144_constraints_vgnuqt.maxWidth
                    : 320);
            final double scratch144_height_hvotac =
                widget.scratch144_height_eujpfh ??
                (scratch144_constraints_vgnuqt.maxHeight.isFinite
                    ? scratch144_constraints_vgnuqt.maxHeight
                    : 200);

            _scratch144_view_size_nrcpmx = Size(
              scratch144_width_iurbkz,
              scratch144_height_hvotac,
            );

            final Widget scratch144_stack_xvkpql = SizedBox(
              width: scratch144_width_iurbkz,
              height: scratch144_height_hvotac,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  widget.scratch144_bottom_widget_fhpgka,
                  if (!_scratch144_revealed_uzdykl)
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onPanStart: (DragStartDetails scratch144_details_xtqzew) {
                        _scratch144_auto_token_dvibyk++;
                        _scratch144_handle_pan_update_yhprwu(
                          scratch144_details_xtqzew.localPosition,
                        );
                      },
                      onPanUpdate:
                          (DragUpdateDetails scratch144_details_xcpuzh) {
                            _scratch144_handle_pan_update_yhprwu(
                              scratch144_details_xcpuzh.localPosition,
                            );
                          },
                      onPanEnd: (DragEndDetails scratch144_details_hqpcyw) {
                        _scratch144_handle_pan_end_yrkcqm();
                      },
                      child: CustomPaint(
                        painter: _Scratch144ScratchCoverPainterPwsltd(
                          scratch144_cover_image_dpkjhy:
                              _scratch144_cover_image_htmrpa,
                          scratch144_points_xzreof: _scratch144_points_qjoklt,
                          scratch144_radius_krzquh:
                              widget.scratch144_brush_radius_wzctmk,
                        ),
                      ),
                    ),
                  if (_scratch144_revealed_uzdykl)
                    AnimatedOpacity(
                      opacity: _scratch144_cover_opacity_mqzvhr,
                      duration: const Duration(milliseconds: 420),
                      curve: Curves.easeOutCubic,
                      child: CustomPaint(
                        painter: _Scratch144ScratchCoverPainterPwsltd(
                          scratch144_cover_image_dpkjhy:
                              _scratch144_cover_image_htmrpa,
                          scratch144_points_xzreof: const <Offset?>[],
                          scratch144_radius_krzquh:
                              widget.scratch144_brush_radius_wzctmk,
                        ),
                      ),
                    ),
                ],
              ),
            );

            if (widget.scratch144_border_radius_pxkzmr == null) {
              return scratch144_stack_xvkpql;
            }
            return ClipRRect(
              borderRadius: widget.scratch144_border_radius_pxkzmr!,
              child: scratch144_stack_xvkpql,
            );
          },
    );
  }
}

class _Scratch144ScratchCoverPainterPwsltd extends CustomPainter {
  _Scratch144ScratchCoverPainterPwsltd({
    required this.scratch144_cover_image_dpkjhy,
    required this.scratch144_points_xzreof,
    required this.scratch144_radius_krzquh,
  });

  final ui.Image? scratch144_cover_image_dpkjhy;
  final List<Offset?> scratch144_points_xzreof;
  final double scratch144_radius_krzquh;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect scratch144_layer_rect_ukyfxm = Offset.zero & size;
    canvas.saveLayer(scratch144_layer_rect_ukyfxm, Paint());

    if (scratch144_cover_image_dpkjhy == null) {
      canvas.drawRect(
        scratch144_layer_rect_ukyfxm,
        Paint()..color = const Color(0xFFB5B5B5),
      );
    } else {
      paintImage(
        canvas: canvas,
        rect: scratch144_layer_rect_ukyfxm,
        image: scratch144_cover_image_dpkjhy!,
        fit: BoxFit.cover,
      );
    }

    final Paint scratch144_clear_paint_zyfwko = Paint()
      ..blendMode = BlendMode.clear
      ..isAntiAlias = true;

    for (final Offset? scratch144_point_wnxulv in scratch144_points_xzreof) {
      if (scratch144_point_wnxulv != null) {
        canvas.drawCircle(
          scratch144_point_wnxulv,
          scratch144_radius_krzquh,
          scratch144_clear_paint_zyfwko,
        );
      }
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(
    covariant _Scratch144ScratchCoverPainterPwsltd oldDelegate,
  ) {
    return oldDelegate.scratch144_cover_image_dpkjhy !=
            scratch144_cover_image_dpkjhy ||
        oldDelegate.scratch144_radius_krzquh != scratch144_radius_krzquh ||
        oldDelegate.scratch144_points_xzreof.length !=
            scratch144_points_xzreof.length;
  }
}
