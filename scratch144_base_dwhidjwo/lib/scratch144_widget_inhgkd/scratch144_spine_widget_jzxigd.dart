import 'package:flutter/material.dart';
import 'package:spine_flutter/spine_flutter.dart';

class Scratch144mzlzen extends StatelessWidget {
  String scratch144xpclas;
  String scratch144emwlfk;
  String scratch144bbscpx;
  String scratch144lplolb;
  double? scratch144cpygxw;
  double? scratch144vnnnnq;
  SpineWidgetController? scratch144bujrml;

  Scratch144mzlzen({
    required this.scratch144xpclas,
    required this.scratch144emwlfk,
    required this.scratch144bbscpx,
    required this.scratch144lplolb,
    this.scratch144cpygxw,
    this.scratch144vnnnnq,
    this.scratch144bujrml,
  });

  Widget scratch144_build_spine_widget_ujpbtw(BuildContext context) => SizedBox(
    width: scratch144cpygxw,
    height: scratch144vnnnnq,
    child: SpineWidget.fromAsset(
      "assets/scratch144hcciqy/$scratch144lplolb/$scratch144xpclas.atlas",
      "assets/scratch144hcciqy/$scratch144lplolb/$scratch144emwlfk.json",
      scratch144bujrml ??
          SpineWidgetController(
            onInitialized: (controller) {
              controller.animationState.setAnimationByName(
                0,
                scratch144bbscpx,
                true,
              );
            },
          ),
    ),
  );

  @override
  Widget build(BuildContext context) =>
      scratch144_build_spine_widget_ujpbtw(context);
}
