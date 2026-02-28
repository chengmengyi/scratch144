import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'scratch144_base_dwhidjwo_platform_interface.dart';

/// An implementation of [Scratch144BaseDwhidjwoPlatform] that uses method channels.
class MethodChannelScratch144BaseDwhidjwo
    extends Scratch144BaseDwhidjwoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('scratch144_base_dwhidjwo');

  @override
  Future<String?> scratch144_get_platform_version_kmvrds() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
