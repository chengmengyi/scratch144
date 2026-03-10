import 'package:flutter/material.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';

class Scratch144FingerWidgetUpnejl extends StatelessWidget {
  static const double _scratch144_finger_visual_scale_hqjvpt = 0.68;

  final double scratch144Widthcpygxw;
  final double scratch144Heightvnnnnq;
  final Alignment scratch144_alignment_qmxvpt;

  Scratch144FingerWidgetUpnejl({
    required this.scratch144Widthcpygxw,
    required this.scratch144Heightvnnnnq,
    this.scratch144_alignment_qmxvpt = Alignment.center,
  });

  Widget scratch144_build_finger_widget_shfula(BuildContext context) =>
      SizedBox(
        width: scratch144Widthcpygxw,
        height: scratch144Heightvnnnnq,
        child: Align(
          alignment: scratch144_alignment_qmxvpt,
          child: Scratch144LocalImagesWidgetGohzrl(
            scratch144Nametrrwib: "icon_finger",
            scratch144Widthcpygxw:
                scratch144Widthcpygxw * _scratch144_finger_visual_scale_hqjvpt,
            scratch144Heightvnnnnq:
                scratch144Heightvnnnnq * _scratch144_finger_visual_scale_hqjvpt,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) =>
      scratch144_build_finger_widget_shfula(context);
}
