import 'package:flutter/material.dart';

class Scratch144BreathWidgetMknqtx extends StatefulWidget {
  final Widget child;
  final int scratch144_breath_speed_ms_vrqkxt;
  final double scratch144_breath_scale_extent_qhzxrw;

  const Scratch144BreathWidgetMknqtx({
    super.key,
    required this.child,
    this.scratch144_breath_speed_ms_vrqkxt = 1200,
    this.scratch144_breath_scale_extent_qhzxrw = 0.06,
  });

  @override
  State<Scratch144BreathWidgetMknqtx> createState() =>
      _Scratch144BreathWidgetMknqtxState();
}

class _Scratch144BreathWidgetMknqtxState
    extends State<Scratch144BreathWidgetMknqtx>
    with SingleTickerProviderStateMixin {
  late final AnimationController _scratch144_controller_qxunrp;
  late Animation<double> _scratch144_scale_animation_jmqvzi;

  @override
  void initState() {
    super.initState();
    _scratch144_controller_qxunrp = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: widget.scratch144_breath_speed_ms_vrqkxt.clamp(200, 5000),
      ),
    );
    _scratch144_build_scale_animation_bgqtwi();
    _scratch144_controller_qxunrp.repeat(reverse: true);
  }

  @override
  void didUpdateWidget(covariant Scratch144BreathWidgetMknqtx oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scratch144_breath_speed_ms_vrqkxt !=
            widget.scratch144_breath_speed_ms_vrqkxt ||
        oldWidget.scratch144_breath_scale_extent_qhzxrw !=
            widget.scratch144_breath_scale_extent_qhzxrw) {
      _scratch144_controller_qxunrp.duration = Duration(
        milliseconds: widget.scratch144_breath_speed_ms_vrqkxt.clamp(200, 5000),
      );
      _scratch144_build_scale_animation_bgqtwi();
      _scratch144_controller_qxunrp.repeat(reverse: true);
    }
  }

  void _scratch144_build_scale_animation_bgqtwi() {
    final double scratch144_scale_extent_yxutbp = widget
        .scratch144_breath_scale_extent_qhzxrw
        .clamp(0.0, 0.45)
        .toDouble();
    final double scratch144_min_scale_xgwpqz =
        (1 - scratch144_scale_extent_yxutbp).clamp(0.2, 1.0).toDouble();
    final double scratch144_max_scale_wnxqja =
        1 + scratch144_scale_extent_yxutbp;
    _scratch144_scale_animation_jmqvzi =
        Tween<double>(
          begin: scratch144_min_scale_xgwpqz,
          end: scratch144_max_scale_wnxqja,
        ).animate(
          CurvedAnimation(
            parent: _scratch144_controller_qxunrp,
            curve: Curves.easeInOut,
          ),
        );
  }

  @override
  void dispose() {
    _scratch144_controller_qxunrp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaleTransition(
    scale: _scratch144_scale_animation_jmqvzi,
    child: widget.child,
  );
}
