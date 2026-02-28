import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outlined_text/outlined_text.dart';

class Scratch144sohqqa extends StatelessWidget {
  String scratch144annbiq;
  double scratch144fbwmhh;
  Color scratch144rzkydb;
  Color? scratch144bzjwzh;
  FontWeight? scratch144vzszvv;
  double? scratch144vnnnnq;
  TextAlign? scratch144pmkovo;
  TextDecoration? scratch144xvntxl;
  Color? scratch144xygdxq;

  Scratch144sohqqa({
    required this.scratch144annbiq,
    required this.scratch144fbwmhh,
    required this.scratch144rzkydb,
    this.scratch144bzjwzh,
    this.scratch144vzszvv,
    this.scratch144vnnnnq,
    this.scratch144pmkovo,
    this.scratch144xvntxl,
    this.scratch144xygdxq,
  });

  Widget scratch144_build_text_widget_nyrvhs(BuildContext context) =>
      OutlinedText(
        text: Text(
          scratch144annbiq,
          style: TextStyle(
            fontSize: scratch144fbwmhh,
            color: scratch144rzkydb,
            height: scratch144vnnnnq ?? 0,
            fontWeight: scratch144vzszvv,
            fontFamily: "woff",
            decoration: scratch144xvntxl,
            decorationColor: scratch144xygdxq,
          ),
          textAlign: scratch144pmkovo,
        ),
        strokes: scratch144bzjwzh == null
            ? []
            : [OutlinedTextStroke(color: scratch144bzjwzh!, width: 2.w)],
      );

  @override
  Widget build(BuildContext context) =>
      scratch144_build_text_widget_nyrvhs(context);
}
