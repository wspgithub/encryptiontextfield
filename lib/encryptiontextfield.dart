
import 'encryptiontextfield_platform_interface.dart';

class Encryptiontextfield {
  Future<String?> getPlatformVersion() {
    return EncryptiontextfieldPlatform.instance.getPlatformVersion();
  }
}
