#include "test.h"
#include "assert.h"

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"


int main(int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSApplication * application = [NSApplication sharedApplication];
    
    AppDelegate * appDelegate = [[[AppDelegate alloc] init] autorelease];
    
    [application setDelegate:appDelegate];
    [application run];
    
    [pool drain];
    
    return EXIT_SUCCESS;
}
