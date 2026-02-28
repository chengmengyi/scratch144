import 'package:flutter/material.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_widget_type_vsmaou.dart';
import 'package:get/get.dart';

abstract class Scratch144WidgetInhgkd<T extends Scratch144ConSspacr>
    extends StatelessWidget {
  var _init = true;
  late T scratch144wjbgnj;
  late BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    if (_init) {
      scratch144wjbgnj = Get.put(scratch144_init_con_djqgmr());
      _init = false;
    }
    ctx = context;
    switch (scratch144_init_type_hqrwcn()) {
      case Scratch144WidgetTypezeuaqu.page:
        return scratch144_page_widget_hvtgrf();
      case Scratch144WidgetTypezeuaqu.child:
        return scratch144_init_widget_xnblzi();
      case Scratch144WidgetTypezeuaqu.widget:
        return scratch144_init_widget_xnblzi();
      case Scratch144WidgetTypezeuaqu.dialog:
        return scratch144_dialog_widget_tqepgm();
    }
  }

  Widget scratch144_dialog_widget_tqepgm() => WillPopScope(
    child: Material(
      type: MaterialType.transparency,
      child: Center(child: scratch144_init_widget_xnblzi()),
    ),
    onWillPop: () async {
      return false;
    },
  );

  Widget scratch144_page_widget_hvtgrf() => Scaffold(
    body: SafeArea(top: false, child: scratch144_init_widget_xnblzi()),
  );

  T scratch144_init_con_djqgmr();

  Scratch144WidgetTypezeuaqu scratch144_init_type_hqrwcn();

  Widget scratch144_init_widget_xnblzi();
}
