#import "EncryptiontextfieldPlugin.h"
#if __has_include(<encryptiontextfield/encryptiontextfield-Swift.h>)
#import <encryptiontextfield/encryptiontextfield-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "encryptiontextfield-Swift.h"
#endif

@implementation EncryptiontextfieldPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEncryptiontextfieldPlugin registerWithRegistrar:registrar];
}
@end
