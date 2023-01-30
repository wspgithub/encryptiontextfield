import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'encryptiontextfield_method_channel.dart';

abstract class EncryptiontextfieldPlatform extends PlatformInterface {
  /// Constructs a EncryptiontextfieldPlatform.
  EncryptiontextfieldPlatform() : super(token: _token);

  static final Object _token = Object();

  static EncryptiontextfieldPlatform _instance = MethodChannelEncryptiontextfield();

  /// The default instance of [EncryptiontextfieldPlatform] to use.
  ///
  /// Defaults to [MethodChannelEncryptiontextfield].
  static EncryptiontextfieldPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [EncryptiontextfieldPlatform] when
  /// they register themselves.
  static set instance(EncryptiontextfieldPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
