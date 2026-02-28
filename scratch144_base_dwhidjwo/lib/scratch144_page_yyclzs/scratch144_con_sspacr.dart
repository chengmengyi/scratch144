import 'dart:async';

import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';
import 'package:get/get.dart';

abstract class Scratch144ConSspacr extends GetxController {
  StreamSubscription<Map>? _streamSubscription;

  void scratch144_handle_event_msg_bvsgpz(
    int eventCode,
    int? intValue,
    String? strValue,
    dynamic anyValue,
  ) {}

  @override
  void onClose() {
    if (scratch144_init_event_fobikq()) {
      _streamSubscription?.cancel();
      _streamSubscription = null;
    }
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    if (scratch144_init_event_fobikq()) {
      _streamSubscription = Scratch144fdahfo.scratch144_instance_poyhwd
          .scratch144_listen_xqmwzr(scratch144_handle_event_msg_bvsgpz);
    }
  }

  bool scratch144_init_event_fobikq() => false;
}
