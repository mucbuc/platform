#import "AppDelegate.h"

#include "window.h"

@implementation AppDelegate : NSObject 

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    if (self = [ super init ] )
    {
        new om636::window();
    }
}

@end
