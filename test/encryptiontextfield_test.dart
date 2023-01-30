import 'package:flutter_test/flutter_test.dart';
import 'package:encryptiontextfield/encryptiontextfield.dart';
import 'package:encryptiontextfield/encryptiontextfield_platform_interface.dart';
import 'package:encryptiontextfield/encryptiontextfield_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEncryptiontextfieldPlatform
    with MockPlatformInterfaceMixin
    implements EncryptiontextfieldPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final EncryptiontextfieldPlatform initialPlatform = EncryptiontextfieldPlatform.instance;

  test('$MethodChannelEncryptiontextfield is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelEncryptiontextfield>());
  });

  test('getPlatformVersion', () async {
    Encryptiontextfield encryptiontextfieldPlugin = Encryptiontextfield();
    MockEncryptiontextfieldPlatform fakePlatform = MockEncryptiontextfieldPlatform();
    EncryptiontextfieldPlatform.instance = fakePlatform;

    expect(await encryptiontextfieldPlugin.getPlatformVersion(), '42');
  });
}
