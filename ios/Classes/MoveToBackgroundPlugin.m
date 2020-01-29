#import "MoveToBackgroundPlugin.h"
#import <move_to_background/move_to_background-Swift.h>

@implementation MoveToBackgroundPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMoveToBackgroundPlugin registerWithRegistrar:registrar];
}
@end
