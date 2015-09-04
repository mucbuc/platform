#import <Cocoa/Cocoa.h>
#include <lib/platform/src/mac/OpenGLView.h>

namespace om636
{
    class root_context;
}

@interface TrackView : OpenGLView
{
    NSTrackingArea * trackingArea;

    om636::root_context * context;
}

- (void) setContext:(om636::root_context *)context;
- (id) initWithFrame:(NSRect)frameRect; 
- (void)updateTrackingAreas;
- (BOOL)acceptsFirstResponder;
- (BOOL)acceptsFirstMouse;
- (void)mouseUp:(NSEvent *)event;
- (void)mouseDown:(NSEvent *)event;
- (void)mouseMoved:(NSEvent *)event; 
- (void)mouseDragged:(NSEvent *)event;
- (BOOL)acceptsMouseMovedEvents; 

@end
