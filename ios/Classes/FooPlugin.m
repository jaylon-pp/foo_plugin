#import "FooPlugin.h"
#if __has_include(<foo_plugin/foo_plugin-Swift.h>)
#import <foo_plugin/foo_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "foo_plugin-Swift.h"
#endif

@implementation FooPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFooPlugin registerWithRegistrar:registrar];
}
@end
