import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'scratch144_aaa_dmwodkpw_method_channel.dart';

abstract class Scratch144AaaDmwodkpwPlatform extends PlatformInterface {
  /// Constructs a Scratch144AaaDmwodkpwPlatform.
  Scratch144AaaDmwodkpwPlatform() : super(token: _token);

  static final Object _token = Object();

  static Scratch144AaaDmwodkpwPlatform _instance = MethodChannelScratch144AaaDmwodkpw();

  /// The default instance of [Scratch144AaaDmwodkpwPlatform] to use.
  ///
  /// Defaults to [MethodChannelScratch144AaaDmwodkpw].
  static Scratch144AaaDmwodkpwPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Scratch144AaaDmwodkpwPlatform] when
  /// they register themselves.
  static set instance(Scratch144AaaDmwodkpwPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
