import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'scratch144_base_dwhidjwo_method_channel.dart';

abstract class Scratch144BaseDwhidjwoPlatform extends PlatformInterface {
  /// Constructs a Scratch144BaseDwhidjwoPlatform.
  Scratch144BaseDwhidjwoPlatform() : super(token: _token);

  static final Object _token = Object();

  static Scratch144BaseDwhidjwoPlatform _instance =
      MethodChannelScratch144BaseDwhidjwo();

  Future<String?> scratch144_get_platform_version_kmvrds() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Scratch144BaseDwhidjwoPlatform] when
  /// they register themselves.
  static set scratch144_instance_wcljrb(
    Scratch144BaseDwhidjwoPlatform scratch144_platform_tvoynh,
  ) {
    PlatformInterface.verifyToken(scratch144_platform_tvoynh, _token);
    _instance = scratch144_platform_tvoynh;
  }

  /// The default instance of [Scratch144BaseDwhidjwoPlatform] to use.
  ///
  /// Defaults to [MethodChannelScratch144BaseDwhidjwo].
  static Scratch144BaseDwhidjwoPlatform get scratch144_instance_wcljrb =>
      _instance;
}
