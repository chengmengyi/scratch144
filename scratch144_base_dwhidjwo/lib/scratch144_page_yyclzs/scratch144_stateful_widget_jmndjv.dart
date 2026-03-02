import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';

abstract class Scratch144StatefulWidgetJmndjv extends StatefulWidget {
  const Scratch144StatefulWidgetJmndjv({Key? key}) : super(key: key);
}

abstract class Scratch144Statemubfka<T extends Scratch144StatefulWidgetJmndjv> extends State<T> {
  StreamSubscription<Map>? _streamSubscription;

  void scratch144_handle_event_msg_fhngrw(
    int eventCode,
    int? intValue,
    String? strValue,
    dynamic anyValue,
  ) {}

  @override
  void initState() {
    super.initState();
    if (scratch144_init_event_huwxya()) {
      _streamSubscription = Scratch144EventUtilsDzijuo.instance.scratch144_listen_xqmwzr(scratch144_handle_event_msg_fhngrw);
    }
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _streamSubscription = null;
    super.dispose();
  }

  bool scratch144_init_event_huwxya() => false;
}
