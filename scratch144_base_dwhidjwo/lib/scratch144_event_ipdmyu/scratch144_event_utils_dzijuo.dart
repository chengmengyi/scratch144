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
      data["scratch144Codembkrac"],
      data["scratch144Intdgkpic"],
      data["scratch144Stringitcbqx"],
      data["scratch144Anyhqnitu"],
    );
  });

  void scratch144_send_msg_olcuzr({
    required int scratch144Codembkrac,
    int? scratch144Intdgkpic,
    String? scratch144Stringitcbqx,
    dynamic scratch144Anyhqnitu,
  }) {
    scratch144pyjyas.fire({
      "scratch144Codembkrac": scratch144Codembkrac,
      "scratch144Intdgkpic": scratch144Intdgkpic,
      "scratch144Stringitcbqx": scratch144Stringitcbqx,
      "scratch144Anyhqnitu": scratch144Anyhqnitu,
    });
  }
}
