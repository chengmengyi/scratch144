import 'dart:async';

import 'package:event_bus/event_bus.dart';

class Scratch144EventUtilsDzijuo {
  static final Scratch144EventUtilsDzijuo scratch144jlkntn = Scratch144EventUtilsDzijuo();
  static Scratch144EventUtilsDzijuo get instance => scratch144jlkntn;

  final EventBus scratch144pyjyas = EventBus();

  StreamSubscription<Map> scratch144_listen_xqmwzr(
    dynamic scratch144_handle_event_uqbvmi,
  ) => scratch144pyjyas.on<Map>().listen((data) {
    scratch144_handle_event_uqbvmi(
      data["scratch144mbkrac"],
      data["scratch144dgkpic"],
      data["scratch144itcbqx"],
      data["scratch144hqnitu"],
    );
  });

  void scratch144_send_msg_olcuzr({
    required int scratch144mbkrac,
    int? scratch144dgkpic,
    String? scratch144itcbqx,
    dynamic scratch144hqnitu,
  }) {
    scratch144pyjyas.fire({
      "scratch144mbkrac": scratch144mbkrac,
      "scratch144dgkpic": scratch144dgkpic,
      "scratch144itcbqx": scratch144itcbqx,
      "scratch144hqnitu": scratch144hqnitu,
    });
  }
}
