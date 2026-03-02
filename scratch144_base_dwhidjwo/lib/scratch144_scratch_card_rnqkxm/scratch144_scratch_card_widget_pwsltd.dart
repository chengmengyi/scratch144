import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

typedef Scratch144StartAutoDelegatePwsltd =
    Future<void> Function({
      required int scratch144_pattern_mode_ystnqe,
      int? scratch144_tick_delay_ms_nxvrop,
      double? scratch144_auto_four_bottom_gap_pmxhtw,
      double? scratch144_auto_track_width_ljuzhx,
    });

class Scratch144ScratchCardControllerPwsltd {
  Object? _scratch144_start_auto_delegate_hmjpof;
  VoidCallback? _scratch144_reset_delegate_sgxqwu;

  void scratch144_bind_delegate_zfryvh({
    required Scratch144StartAutoDelegatePwsltd
    scratch144_start_auto_delegate_hmjpof,
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
    int? scratch144_tick_delay_ms_nxvrop,
    double? scratch144_auto_four_bottom_gap_pmxhtw,
    double? scratch144_auto_track_width_ljuzhx,
  }) async {
    final Object? scratch144_delegate_dxmgui =
        _scratch144_start_auto_delegate_hmjpof;
    if (scratch144_delegate_dxmgui == null) {
      return;
    }
    if (scratch144_delegate_dxmgui is Scratch144StartAutoDelegatePwsltd) {
      await scratch144_delegate_dxmgui.call(
        scratch144_pattern_mode_ystnqe: scratch144_pattern_mode_ystnqe,
        scratch144_tick_delay_ms_nxvrop: scratch144_tick_delay_ms_nxvrop,
        scratch144_auto_four_bottom_gap_pmxhtw:
            scratch144_auto_four_bottom_gap_pmxhtw,
        scratch144_auto_track_width_ljuzhx: scratch144_auto_track_width_ljuzhx,
      );
      return;
    }
    if (scratch144_delegate_dxmgui is Future<void> Function(int)) {
      await scratch144_delegate_dxmgui.call(scratch144_pattern_mode_ystnqe);
      return;
    }
    if (scratch144_delegate_dxmgui is Function) {
      final Map<Symbol, dynamic> scratch144_named_args_udkqxt =
          <Symbol, dynamic>{
            #scratch144_pattern_mode_ystnqe: scratch144_pattern_mode_ystnqe,
            if (scratch144_tick_delay_ms_nxvrop != null)
              #scratch144_tick_delay_ms_nxvrop: scratch144_tick_delay_ms_nxvrop,
            if (scratch144_auto_four_bottom_gap_pmxhtw != null)
              #scratch144_auto_four_bottom_gap_pmxhtw:
                  scratch144_auto_four_bottom_gap_pmxhtw,
            if (scratch144_auto_track_width_ljuzhx != null)
              #scratch144_auto_track_width_ljuzhx:
                  scratch144_auto_track_width_ljuzhx,
          };
      try {
        final dynamic scratch144_result_kdlqxt = Function.apply(
          scratch144_delegate_dxmgui,
          const <dynamic>[],
          scratch144_named_args_udkqxt,
        );
        if (scratch144_result_kdlqxt is Future<void>) {
          await scratch144_result_kdlqxt;
        }
      } catch (_) {
        final dynamic scratch144_fallback_ypkqwm = Function.apply(
          scratch144_delegate_dxmgui,
          <dynamic>[scratch144_pattern_mode_ystnqe],
        );
        if (scratch144_fallback_ypkqwm is Future<void>) {
          await scratch144_fallback_ypkqwm;
        }
      }
    }
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
  double? _scratch144_runtime_brush_radius_ljuzhx;

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

  @override
  void reassemble() {
    super.reassemble();
    widget.scratch144_controller_ptjlwm?.scratch144_bind_delegate_zfryvh(
      scratch144_start_auto_delegate_hmjpof:
          _scratch144_start_auto_scratch_vewrnm,
      scratch144_reset_delegate_sgxqwu: _scratch144_reset_card_fqevyh,
    );
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
      _scratch144_runtime_brush_radius_ljuzhx = null;
    });
  }

  Future<void> _scratch144_start_auto_scratch_vewrnm({
    required int scratch144_pattern_mode_ystnqe,
    int? scratch144_tick_delay_ms_nxvrop,
    double? scratch144_auto_four_bottom_gap_pmxhtw,
    double? scratch144_auto_track_width_ljuzhx,
  }) async {
    if (_scratch144_view_size_nrcpmx == Size.zero) {
      return;
    }
    final double? scratch144_auto_brush_radius_krjtxv =
        scratch144_auto_track_width_ljuzhx?.clamp(1.0, 120.0).toDouble();
    _scratch144_runtime_brush_radius_ljuzhx =
        scratch144_auto_brush_radius_krjtxv;
    final List<Offset?> scratch144_path_iyqpnd =
        _scratch144_build_pattern_path_lqvwca(
          scratch144_pattern_mode_ystnqe,
          scratch144_auto_four_bottom_gap_pmxhtw:
              scratch144_auto_four_bottom_gap_pmxhtw,
        );
    if (scratch144_path_iyqpnd.isEmpty) {
      return;
    }

    _scratch144_auto_token_dvibyk++;
    final int scratch144_run_token_hxzfqc = _scratch144_auto_token_dvibyk;
    final int scratch144_tick_delay_ms_jdkfye =
        (scratch144_tick_delay_ms_nxvrop ??
                (scratch144_pattern_mode_ystnqe == 3
                    ? 6
                    : scratch144_pattern_mode_ystnqe == 4
                    ? 8
                    : 12))
            .clamp(1, 4000)
            .toInt();
    final Duration scratch144_tick_delay_jeqkmu = Duration(
      milliseconds: scratch144_tick_delay_ms_jdkfye,
    );
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
    int scratch144_pattern_mode_ystnqe, {
    double? scratch144_auto_four_bottom_gap_pmxhtw,
  }) {
    switch (scratch144_pattern_mode_ystnqe) {
      case 1:
        return _scratch144_pattern_row_zigzag_udgkfp();
      case 2:
        return _scratch144_pattern_column_zigzag_rtmqpb();
      case 3:
        return _scratch144_pattern_spiral_vdfmru();
      case 4:
        return _scratch144_pattern_cross_hatch_dgzqeu(
          scratch144_auto_four_bottom_gap_pmxhtw:
              scratch144_auto_four_bottom_gap_pmxhtw,
        );
      default:
        return <Offset?>[];
    }
  }

  List<Offset?> _scratch144_pattern_row_zigzag_udgkfp() {
    return _scratch144_pattern_diagonal_edge_swipe_fzxpjt();
  }

  List<Offset?> _scratch144_pattern_diagonal_edge_swipe_fzxpjt() {
    final double scratch144_width_iurbkz = _scratch144_view_size_nrcpmx.width;
    final double scratch144_height_hvotac = _scratch144_view_size_nrcpmx.height;
    if (scratch144_width_iurbkz <= 0 || scratch144_height_hvotac <= 0) {
      return <Offset?>[];
    }
    final double scratch144_step_kjrsuz = math.max(
      _scratch144_get_active_brush_radius_djkqmf() * 0.56,
      6,
    );
    final double scratch144_line_gap_qpmtaz = math.max(
      _scratch144_get_active_brush_radius_djkqmf() * 1.45,
      22,
    );
    const double scratch144_slope_kwnlrz = 1.05;
    final List<Offset?> scratch144_points_dhztjg = <Offset?>[];

    for (
      double scratch144_start_y_hgvopr = 0;
      scratch144_start_y_hgvopr <= scratch144_height_hvotac;
      scratch144_start_y_hgvopr += scratch144_line_gap_qpmtaz
    ) {
      final Offset scratch144_start_ndkrxu = Offset(
        0,
        scratch144_start_y_hgvopr,
      );
      final Offset scratch144_end_kxclzu =
          _scratch144_build_diagonal_edge_end_dhrqbo(
            scratch144_start_ndkrxu,
            scratch144_slope_kwnlrz,
            scratch144_width_iurbkz,
            scratch144_height_hvotac,
          );
      scratch144_points_dhztjg.addAll(
        _scratch144_build_line_points_nrcyvk(
          scratch144_start_ndkrxu,
          scratch144_end_kxclzu,
          scratch144_step_kjrsuz,
        ),
      );
      scratch144_points_dhztjg.add(null);
    }

    for (
      double scratch144_start_x_hgvcqo = scratch144_line_gap_qpmtaz;
      scratch144_start_x_hgvcqo <= scratch144_width_iurbkz;
      scratch144_start_x_hgvcqo += scratch144_line_gap_qpmtaz
    ) {
      final Offset scratch144_start_ndkrxu = Offset(
        scratch144_start_x_hgvcqo,
        0,
      );
      final Offset scratch144_end_kxclzu =
          _scratch144_build_diagonal_edge_end_dhrqbo(
            scratch144_start_ndkrxu,
            scratch144_slope_kwnlrz,
            scratch144_width_iurbkz,
            scratch144_height_hvotac,
          );
      scratch144_points_dhztjg.addAll(
        _scratch144_build_line_points_nrcyvk(
          scratch144_start_ndkrxu,
          scratch144_end_kxclzu,
          scratch144_step_kjrsuz,
        ),
      );
      scratch144_points_dhztjg.add(null);
    }
    return scratch144_points_dhztjg;
  }

  Offset _scratch144_build_diagonal_edge_end_dhrqbo(
    Offset scratch144_start_ndkrxu,
    double scratch144_slope_kwnlrz,
    double scratch144_width_iurbkz,
    double scratch144_height_hvotac,
  ) {
    final double scratch144_t_right_ebhogn =
        scratch144_width_iurbkz - scratch144_start_ndkrxu.dx;
    final double scratch144_y_at_right_ilprhm =
        scratch144_start_ndkrxu.dy +
        (scratch144_t_right_ebhogn * scratch144_slope_kwnlrz);
    if (scratch144_y_at_right_ilprhm <= scratch144_height_hvotac) {
      return Offset(scratch144_width_iurbkz, scratch144_y_at_right_ilprhm);
    }
    final double scratch144_t_bottom_dxgujr =
        (scratch144_height_hvotac - scratch144_start_ndkrxu.dy) /
        scratch144_slope_kwnlrz;
    final double scratch144_x_at_bottom_xjldpg =
        scratch144_start_ndkrxu.dx + scratch144_t_bottom_dxgujr;
    return Offset(
      scratch144_x_at_bottom_xjldpg
          .clamp(0.0, scratch144_width_iurbkz)
          .toDouble(),
      scratch144_height_hvotac,
    );
  }

  List<Offset?> _scratch144_pattern_column_zigzag_rtmqpb() {
    final double scratch144_step_kjrsuz = math.max(
      _scratch144_get_active_brush_radius_djkqmf() * 0.56,
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
        math.max(_scratch144_get_active_brush_radius_djkqmf() * 1.6, 28) *
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
      math.max(_scratch144_get_active_brush_radius_djkqmf() * 0.52, 6),
    );
  }

  List<Offset?> _scratch144_pattern_cross_hatch_dgzqeu({
    double? scratch144_auto_four_bottom_gap_pmxhtw,
  }) {
    final double scratch144_step_kjrsuz = math.max(
      _scratch144_get_active_brush_radius_djkqmf() * 0.54,
      6,
    );
    return _scratch144_build_auto_four_path_points_zvpkjm(
      scratch144_step_kjrsuz: scratch144_step_kjrsuz,
      scratch144_bottom_gap_pmxhtw: scratch144_auto_four_bottom_gap_pmxhtw,
    );
  }

  List<Offset?> _scratch144_build_auto_four_path_points_zvpkjm({
    required double scratch144_step_kjrsuz,
    double? scratch144_bottom_gap_pmxhtw,
  }) {
    final List<Offset> scratch144_waypoints_wqfubv =
        _scratch144_build_auto_four_waypoints_zvpkjm(
          scratch144_bottom_gap_pmxhtw: scratch144_bottom_gap_pmxhtw,
        );
    if (scratch144_waypoints_wqfubv.length < 2) {
      return <Offset?>[];
    }
    final double scratch144_curve_amplitude_hmjyvw =
        (_scratch144_get_active_brush_radius_djkqmf() * 0.5)
            .clamp(3.5, 13.0)
            .toDouble();
    final double scratch144_curve_step_kmvrzq = math.max(
      scratch144_step_kjrsuz * 0.38,
      2.4,
    );
    return _scratch144_build_gentle_curve_polyline_zhmlpf(
      scratch144_waypoints_wqfubv,
      scratch144_curve_step_kmvrzq,
      scratch144_curve_amplitude_hmjyvw,
    );
  }

  List<Offset?> _scratch144_build_gentle_curve_polyline_zhmlpf(
    List<Offset> scratch144_waypoints_wqfubv,
    double scratch144_step_kjrsuz,
    double scratch144_curve_amplitude_hmjyvw,
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
      final Offset scratch144_start_ndkrxu =
          scratch144_waypoints_wqfubv[scratch144_index_snxlrd];
      final Offset scratch144_end_kxclzu =
          scratch144_waypoints_wqfubv[scratch144_index_snxlrd + 1];
      final List<Offset> scratch144_segment_wpnzva =
          _scratch144_build_line_points_nrcyvk(
            scratch144_start_ndkrxu,
            scratch144_end_kxclzu,
            scratch144_step_kjrsuz,
          );
      if (scratch144_segment_wpnzva.isEmpty) {
        continue;
      }
      final Offset scratch144_delta_chopnb =
          scratch144_end_kxclzu - scratch144_start_ndkrxu;
      final double scratch144_distance_nluqgj =
          scratch144_delta_chopnb.distance;
      final double scratch144_normal_x_omkpjb =
          scratch144_distance_nluqgj < 0.001
          ? 0
          : (-scratch144_delta_chopnb.dy / scratch144_distance_nluqgj);
      final double scratch144_normal_y_neycfa =
          scratch144_distance_nluqgj < 0.001
          ? 0
          : (scratch144_delta_chopnb.dx / scratch144_distance_nluqgj);
      final double scratch144_curve_direction_hqzvkp =
          (scratch144_delta_chopnb.dx < 0 && scratch144_delta_chopnb.dy > 0)
          ? 1
          : -1;
      final int scratch144_start_index_jpkfvw = scratch144_points_dhztjg.isEmpty
          ? 0
          : 1;

      for (
        int scratch144_point_index_dqywuv = scratch144_start_index_jpkfvw;
        scratch144_point_index_dqywuv < scratch144_segment_wpnzva.length;
        scratch144_point_index_dqywuv++
      ) {
        final Offset scratch144_point_jlgtnk =
            scratch144_segment_wpnzva[scratch144_point_index_dqywuv];
        final bool scratch144_is_endpoint_fjlwmq =
            scratch144_point_index_dqywuv == 0 ||
            scratch144_point_index_dqywuv ==
                scratch144_segment_wpnzva.length - 1;
        if (scratch144_is_endpoint_fjlwmq) {
          scratch144_points_dhztjg.add(
            _scratch144_clamp_offset_xovpkm(scratch144_point_jlgtnk),
          );
          continue;
        }
        final double scratch144_t_nezphc =
            scratch144_point_index_dqywuv /
            (scratch144_segment_wpnzva.length - 1);
        final double scratch144_curve_factor_oteqwf = math.sin(
          math.pi * scratch144_t_nezphc,
        );
        final double scratch144_curve_offset_jrmnqs =
            scratch144_curve_factor_oteqwf *
            scratch144_curve_amplitude_hmjyvw *
            scratch144_curve_direction_hqzvkp;
        scratch144_points_dhztjg.add(
          _scratch144_clamp_offset_xovpkm(
            Offset(
              scratch144_point_jlgtnk.dx +
                  (scratch144_normal_x_omkpjb * scratch144_curve_offset_jrmnqs),
              scratch144_point_jlgtnk.dy +
                  (scratch144_normal_y_neycfa * scratch144_curve_offset_jrmnqs),
            ),
          ),
        );
      }
    }
    scratch144_points_dhztjg.add(null);
    return scratch144_points_dhztjg;
  }

  List<Offset> _scratch144_build_auto_four_waypoints_zvpkjm({
    double? scratch144_bottom_gap_pmxhtw,
  }) {
    final double scratch144_width_iurbkz = _scratch144_view_size_nrcpmx.width;
    final double scratch144_height_hvotac = _scratch144_view_size_nrcpmx.height;
    final double scratch144_top_y_vhzpqa = 0;
    final double scratch144_path_width_pmqzjx =
        _scratch144_get_active_brush_radius_djkqmf() * 2;
    final double scratch144_line_gap_vpdmqr =
        (scratch144_bottom_gap_pmxhtw ?? scratch144_path_width_pmqzjx)
            .clamp(
              scratch144_path_width_pmqzjx * 0.75,
              scratch144_path_width_pmqzjx,
            )
            .toDouble();
    final double scratch144_first_top_x_xdcfzo = math.min(
      100,
      scratch144_width_iurbkz,
    );

    final List<Offset> scratch144_waypoints_wqfubv = <Offset>[];
    final double scratch144_middle_y_qvknax = scratch144_height_hvotac / 2;
    scratch144_waypoints_wqfubv.add(Offset(0, scratch144_middle_y_qvknax));
    for (
      int scratch144_index_snxlrd = 0;
      scratch144_index_snxlrd < 180;
      scratch144_index_snxlrd++
    ) {
      final Offset scratch144_upper_point_mqnzwr =
          _scratch144_build_auto_four_upper_or_right_point_fspxud(
            scratch144_index_snxlrd,
            scratch144_line_gap_vpdmqr,
            scratch144_first_top_x_xdcfzo,
            scratch144_top_y_vhzpqa,
            scratch144_width_iurbkz,
            scratch144_height_hvotac,
          );
      if ((scratch144_waypoints_wqfubv.last - scratch144_upper_point_mqnzwr)
              .distance >
          0.5) {
        scratch144_waypoints_wqfubv.add(scratch144_upper_point_mqnzwr);
      }

      final Offset scratch144_lower_point_izmfqp =
          _scratch144_build_auto_four_left_or_bottom_point_jndtxq(
            scratch144_index_snxlrd,
            scratch144_line_gap_vpdmqr,
            scratch144_middle_y_qvknax,
            scratch144_width_iurbkz,
            scratch144_height_hvotac,
          );
      if ((scratch144_waypoints_wqfubv.last - scratch144_lower_point_izmfqp)
              .distance >
          0.5) {
        scratch144_waypoints_wqfubv.add(scratch144_lower_point_izmfqp);
      }

      final bool scratch144_upper_done_yrqbkh =
          scratch144_upper_point_mqnzwr.dx >= scratch144_width_iurbkz - 0.5 &&
          scratch144_upper_point_mqnzwr.dy >= scratch144_height_hvotac - 0.5;
      final bool scratch144_lower_done_owfqli =
          scratch144_lower_point_izmfqp.dx >= scratch144_width_iurbkz - 0.5 &&
          scratch144_lower_point_izmfqp.dy >= scratch144_height_hvotac - 0.5;
      if (scratch144_upper_done_yrqbkh && scratch144_lower_done_owfqli) {
        break;
      }
    }

    return scratch144_waypoints_wqfubv;
  }

  Offset _scratch144_build_auto_four_upper_or_right_point_fspxud(
    int scratch144_index_snxlrd,
    double scratch144_line_gap_vpdmqr,
    double scratch144_first_top_x_xdcfzo,
    double scratch144_top_y_vhzpqa,
    double scratch144_width_iurbkz,
    double scratch144_height_hvotac,
  ) {
    final double scratch144_raw_top_x_eqtbwk =
        scratch144_first_top_x_xdcfzo +
        (scratch144_index_snxlrd * scratch144_line_gap_vpdmqr);
    if (scratch144_raw_top_x_eqtbwk <= scratch144_width_iurbkz) {
      return Offset(scratch144_raw_top_x_eqtbwk, scratch144_top_y_vhzpqa);
    }
    final double scratch144_right_y_kxznut =
        (scratch144_raw_top_x_eqtbwk - scratch144_width_iurbkz)
            .clamp(0.0, scratch144_height_hvotac)
            .toDouble();
    return Offset(scratch144_width_iurbkz, scratch144_right_y_kxznut);
  }

  Offset _scratch144_build_auto_four_left_or_bottom_point_jndtxq(
    int scratch144_index_snxlrd,
    double scratch144_line_gap_vpdmqr,
    double scratch144_middle_y_qvknax,
    double scratch144_width_iurbkz,
    double scratch144_height_hvotac,
  ) {
    final double scratch144_raw_left_y_qcgwtn =
        scratch144_middle_y_qvknax +
        scratch144_line_gap_vpdmqr +
        (scratch144_index_snxlrd * scratch144_line_gap_vpdmqr);
    if (scratch144_raw_left_y_qcgwtn <= scratch144_height_hvotac) {
      return Offset(0, scratch144_raw_left_y_qcgwtn);
    }
    final double scratch144_bottom_x_vrjzsp =
        (scratch144_raw_left_y_qcgwtn - scratch144_height_hvotac)
            .clamp(0.0, scratch144_width_iurbkz)
            .toDouble();
    return Offset(scratch144_bottom_x_vrjzsp, scratch144_height_hvotac);
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
    setState(() {
      if (!_scratch144_revealed_uzdykl) {
        _scratch144_points_qjoklt.add(null);
      }
    });
  }

  void _scratch144_mark_cells_juncmr(Offset scratch144_center_ofekyh) {
    final double scratch144_active_radius_hmzqkx =
        _scratch144_get_active_brush_radius_djkqmf();
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
        (scratch144_active_radius_hmzqkx / _scratch144_grid_size_uqctms)
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
            scratch144_active_radius_hmzqkx +
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
        _scratch144_get_reveal_threshold_zhqufx()) {
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

  double _scratch144_get_reveal_threshold_zhqufx() {
    return widget.scratch144_reveal_threshold_jfudce
        .clamp(0.01, 0.99)
        .toDouble();
  }

  double _scratch144_get_active_brush_radius_djkqmf() {
    return (_scratch144_runtime_brush_radius_ljuzhx ??
            widget.scratch144_brush_radius_wzctmk)
        .clamp(1.0, 120.0)
        .toDouble();
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
                        _scratch144_runtime_brush_radius_ljuzhx = null;
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
                              _scratch144_get_active_brush_radius_djkqmf(),
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
                              _scratch144_get_active_brush_radius_djkqmf(),
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
