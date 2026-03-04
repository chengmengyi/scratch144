import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outlined_text/outlined_text.dart';

enum Scratch144FontFamilydwedowkd{
  pattaya,patuaone,flavors,
}

class Scratch144TextWidgetPcbuin extends StatelessWidget {
  String scratch144Textannbiq;
  double scratch144Sizefbwmhh;
  Color scratch144TextColorrzkydb;
  Color? scratch144OutLineColorbzjwzh;
  FontWeight? scratch144FontWeightvzszvv;
  double? scratch144Heightvnnnnq;
  TextAlign? scratch144TextAlignpmkovo;
  TextDecoration? scratch144TextDecorationxvntxl;
  Color? scratch144TextDecorationColorxygdxq;
  Scratch144FontFamilydwedowkd? scratch144fontFamilydwedowkd;

  Scratch144TextWidgetPcbuin({
    required this.scratch144Textannbiq,
    required this.scratch144Sizefbwmhh,
    required this.scratch144TextColorrzkydb,
    this.scratch144OutLineColorbzjwzh,
    this.scratch144FontWeightvzszvv,
    this.scratch144Heightvnnnnq,
    this.scratch144TextAlignpmkovo,
    this.scratch144TextDecorationxvntxl,
    this.scratch144TextDecorationColorxygdxq,
    this.scratch144fontFamilydwedowkd,
  });

  Widget scratch144_build_text_widget_nyrvhs(BuildContext context) =>
      OutlinedText(
        text: Text(
          scratch144Textannbiq,
          style: TextStyle(
            fontSize: scratch144Sizefbwmhh,
            color: scratch144TextColorrzkydb,
            height: scratch144Heightvnnnnq ?? 0,
            fontWeight: scratch144FontWeightvzszvv,
            fontFamily: scratch144fontFamilydwedowkd?.name,
            decoration: scratch144TextDecorationxvntxl,
            decorationColor: scratch144TextDecorationColorxygdxq,
          ),
          textAlign: scratch144TextAlignpmkovo,
        ),
        strokes: scratch144OutLineColorbzjwzh == null
            ? []
            : [OutlinedTextStroke(color: scratch144OutLineColorbzjwzh!, width: 2.w)],
      );

  @override
  Widget build(BuildContext context) =>
      scratch144_build_text_widget_nyrvhs(context);
}
