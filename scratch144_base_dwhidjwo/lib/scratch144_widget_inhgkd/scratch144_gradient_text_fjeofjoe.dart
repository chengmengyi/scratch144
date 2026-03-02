import 'package:flutter/material.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_text_widget_pcbuin.dart';

class Scratch144GradientTextFjeofjoe extends StatelessWidget{
  String textContent;
  Gradient gradient;
  double textSize;
  FontWeight? fontWeight;
  Color? outlineColor;
  TextOverflow? overflow;
  TextAlign? textAlign;
  Scratch144FontFamilydwedowkd? scratch144fontFamilydwedowkd;

  Scratch144GradientTextFjeofjoe({
    required this.textContent,
    required this.textSize,
    required this.gradient,
    this.fontWeight,
    this.outlineColor,
    this.overflow,
    this.textAlign,
    this.scratch144fontFamilydwedowkd,
  });

  @override
  Widget build(BuildContext context) => ShaderMask(
    shaderCallback: (bounds) {
      return gradient.createShader(Offset.zero & bounds.size);
    },
    child: Scratch144TextWidgetPcbuin(
      scratch144Textannbiq: textContent,
      scratch144Sizefbwmhh: textSize,
      scratch144TextColorrzkydb: Colors.white,
      scratch144FontWeightvzszvv: fontWeight,
      scratch144OutLineColorbzjwzh: outlineColor,
      scratch144TextAlignpmkovo: textAlign,
      scratch144fontFamilydwedowkd: scratch144fontFamilydwedowkd,
    ),
  );
}