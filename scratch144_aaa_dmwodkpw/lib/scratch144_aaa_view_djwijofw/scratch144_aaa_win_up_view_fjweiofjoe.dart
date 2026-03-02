import 'package:flutter/material.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_colors_tvffoz.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_gradient_text_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144AaaWinUpViewFjweiofjoe extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Scratch144TextWidgetPcbuin(
        scratch144Textannbiq: "Win Up to ",
        scratch144Sizefbwmhh: 24.sp,
        scratch144TextColorrzkydb: Scratch144nwekyj.colorFFFFFF,
        scratch144OutLineColorbzjwzh: Scratch144nwekyj.color000000,
        scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.pattaya,
      ),
      Scratch144GradientTextFjeofjoe(
        textContent: "1500",
        textSize: 24.sp,
        fontWeight: FontWeight.bold,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Scratch144nwekyj.colorFDF4D1,
            Scratch144nwekyj.colorEAC151,
          ],
        ),
        outlineColor: Scratch144nwekyj.color522703,
        scratch144fontFamilydwedowkd: Scratch144FontFamilydwedowkd.pattaya,
      ),
    ],
  );
}