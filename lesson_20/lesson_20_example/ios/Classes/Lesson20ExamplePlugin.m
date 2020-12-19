#import "Lesson20ExamplePlugin.h"
#if __has_include(<lesson_20_example/lesson_20_example-Swift.h>)
#import <lesson_20_example/lesson_20_example-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "lesson_20_example-Swift.h"
#endif

@implementation Lesson20ExamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLesson20ExamplePlugin registerWithRegistrar:registrar];
}
@end
