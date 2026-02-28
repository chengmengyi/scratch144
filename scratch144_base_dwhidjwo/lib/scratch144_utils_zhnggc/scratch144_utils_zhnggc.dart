import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'scratch144_utils_zhnggc.dart';

export 'package:get_storage/get_storage.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:get/get.dart';
export 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
export 'package:webview_flutter/webview_flutter.dart';
export 'package:flutter_android_ad_plugins/flutter_android_ad_plugins.dart';
export 'package:flutter_android_ad_plugins/hep/ad_type.dart';
export 'package:flutter_android_ad_plugins/hep/ad_num_hep.dart';
export 'package:decimal/decimal.dart';
export 'package:marqueer/marqueer.dart';
export 'package:lottie/lottie.dart';
export 'package:shake_animation_widget/shake_animation_widget.dart';

extension StringBase64 on String {
  String base64() => const Utf8Decoder().convert(base64Decode(this));
}

double getProgress(num1, num2) {
  try {
    if (num2 == 0) {
      return 0.0;
    }
    var d = num1 / num2;
    if (d < 0) {
      return 0.0;
    } else if (d > 1.0) {
      return 1.0;
    } else {
      return d;
    }
  } catch (e) {
    return 0.0;
  }
}

double scratch144vwgkit(num1, num2) {
  try {
    return (Decimal.parse("$num1") + Decimal.parse("$num2")).toDouble();
  } catch (e) {
    return 0.0;
  }
}

double scratch144yycrlx(num1, num2) {
  try {
    return (Decimal.parse("$num1") * Decimal.parse("$num2")).toDouble();
  } catch (e) {
    return 0.0;
  }
}

double scratch144vdlrik(num1, num2) {
  try {
    return (Decimal.parse("$num1") / Decimal.parse("$num2")).toDouble();
  } catch (e) {
    return 0.0;
  }
}

extension Strint2Double on String {
  double toDouble() {
    try {
      return double.parse(this);
    } catch (e) {
      return 0.0;
    }
  }
}

scratch144upfsnd({required String? text}) {
  if ((text ?? "").isEmpty) {
    return;
  }
  Fluttertoast.showToast(
    msg: text ?? "",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black45,
    textColor: Colors.white,
  );
}

extension RandomList on List {
  random() => this[Random().nextInt(length)];
}

String getTodayTime() {
  var dateTime = DateTime.now();
  return "${dateTime.year}-${dateTime.month}-${dateTime.day}";
}

String encrypt(String data, int code) {
  final dataBytes = utf8.encode(data);
  List<int> xorList = [];
  for (int i = 0; i < dataBytes.length; i++) {
    xorList.add(dataBytes[i] ^ code);
  }
  return base64.encode(xorList);
}

//解密：“data”：加密字符串；“code”：需求文档标题前的项目编号
String decrypt(String data, int code) {
  final decode = base64.decode(data);
  final decode2 = decode.toList();
  List<int> xorList = [];
  for (int i = 0; i < decode2.length; i++) {
    xorList.add(decode2[i] ^ code);
  }
  return utf8.decode(xorList);
}

scratch144rksmih({required Widget child}) {
  Get.dialog(
    child,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.8),
  );
}

scratch144twnvlg({Map<String, dynamic>? params}) {
  Get.back(result: params);
}
