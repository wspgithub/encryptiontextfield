import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'encryptiontextfield_platform_interface.dart';

/// An implementation of [EncryptiontextfieldPlatform] that uses method channels.
class MethodChannelEncryptiontextfield extends EncryptiontextfieldPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('encryptiontextfield');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
