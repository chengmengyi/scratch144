import 'package:flutter/material.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_page_dowdjowk/scratch144_aaa_wheel_dwjodjwo/scratch144_aaa_wheel_controller_dwjodjwo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_inhgkd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_click_widget_mplwfm.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_finger_widget_upnejl.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_widget_inhgkd/scratch144_local_images_widget_gohzrl.dart';

class Scratch144AaaWheelDwjodjwo
    extends Scratch144WidgetInhgkd<Scratch144AaaWheelControllerDwjodjwo> {
  @override
  Scratch144AaaWheelControllerDwjodjwo scratch144_init_con_djqgmr() =>
      Scratch144AaaWheelControllerDwjodjwo();

  @override
  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn() =>
      Scratch144WidgetTypezeuaqu.child;

  @override
  Widget scratch144_init_widget_xnblzi() => Stack(
    alignment: Alignment.topCenter,
    children: [
      Scratch144LocalImagesWidgetGohzrl(
        scratch144Nametrrwib: "wheel1",
        scratch144Widthcpygxw: double.infinity,
        scratch144Heightvnnnnq: double.infinity,
      ),
      Container(
        padding: EdgeInsets.only(top: 110.h, bottom: 100.h),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Scratch144LocalImagesWidgetGohzrl(
              scratch144Nametrrwib: "wheel2",
              scratch144Widthcpygxw: null,
              scratch144Heightvnnnnq: 32.h,
              boxFit: BoxFit.fitHeight,
            ),
            SizedBox(height: 30.h),
            _wheelWidget(),
          ],
        ),
      ),
    ],
  );

  _wheelWidget() => Container(
    margin: EdgeInsets.only(left: 10.w, right: 10.w),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Scratch144LocalImagesWidgetGohzrl(
              scratch144Nametrrwib: "wheel4",
              scratch144Widthcpygxw: 272.w,
              scratch144Heightvnnnnq: 76.h,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 56.h),
              child: AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GetBuilder<Scratch144AaaWheelControllerDwjodjwo>(
                      id: "scratch144_wheel_rotate_qmpvtx",
                      builder: (_) => Transform.rotate(
                        angle: scratch144Controllerwjbgnj
                            .scratch144_wheel_angle_qvptxm,
                        child: Scratch144LocalImagesWidgetGohzrl(
                          scratch144Nametrrwib: "wheel3",
                          scratch144Widthcpygxw: double.infinity,
                          scratch144Heightvnnnnq: double.infinity,
                        ),
                      ),
                    ),
                    GetBuilder<Scratch144AaaWheelControllerDwjodjwo>(
                      id: "scratch144_wheel_spin_state_qmvpt",
                      builder: (_) => Stack(
                        alignment: Alignment.center,
                        children: [
                          Scratch144ClickWidgetMplwfm(
                            onTap: () {
                              scratch144Controllerwjbgnj.clickStart();
                            },
                            child: Opacity(
                              opacity:
                                  scratch144Controllerwjbgnj
                                      .scratch144_spinning_hqmvpt
                                  ? 0.85
                                  : 1,
                              child: Scratch144LocalImagesWidgetGohzrl(
                                scratch144Nametrrwib: "wheel5",
                                scratch144Widthcpygxw: 104.w,
                                scratch144Heightvnnnnq: 126.h,
                              ),
                            ),
                          ),
                          GetBuilder<Scratch144AaaWheelControllerDwjodjwo>(
                            id: "scratch144_wheel_finger_guide_qmvpt",
                            builder: (_) => Visibility(
                              visible:
                                  scratch144Controllerwjbgnj
                                      .scratch144_show_finger_guide_qmvpt &&
                                  !scratch144Controllerwjbgnj
                                      .scratch144_spinning_hqmvpt,
                              child: Container(
                                margin: EdgeInsets.only(left: 40.w, top: 90.h),
                                child: IgnorePointer(
                                  child: Scratch144FingerWidgetUpnejl(
                                    scratch144Widthcpygxw: 63.w,
                                    scratch144Heightvnnnnq: 63.w,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
