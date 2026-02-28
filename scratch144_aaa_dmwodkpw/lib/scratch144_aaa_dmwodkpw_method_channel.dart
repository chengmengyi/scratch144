import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'scratch144_aaa_dmwodkpw_platform_interface.dart';

/// An implementation of [Scratch144AaaDmwodkpwPlatform] that uses method channels.
class MethodChannelScratch144AaaDmwodkpw extends Scratch144AaaDmwodkpwPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('scratch144_aaa_dmwodkpw');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
