#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate> 
{
    NSWindow *window;
}

@property (assign) NSWindow *window;

@end
