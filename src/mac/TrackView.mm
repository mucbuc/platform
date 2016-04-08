
#import <lib/platform/src/mac/TrackView.h>

#include <lib/platform/src/mac/root_context.h>
#include <tmp/src/test.h>

@implementation TrackView

- (id) initWithFrame:(NSRect)frameRect
{
    if ([super initWithFrame:frameRect])
    {
        trackingArea = [[NSTrackingArea alloc] initWithRect:[self frame] options: (NSTrackingMouseEnteredAndExited | NSTrackingMouseMoved | NSTrackingActiveAlways ) owner:self userInfo:nil];
        [self addTrackingArea:trackingArea];
    }
    context = nil;
    return self;  
}

- (void) setContext:(om636::root_context *)c
{
    context = c;
}

- (void) drawView
{	
    ASSERT( context );

    [ super contextLock ];
    
    context->render();

    [ super contextOpen ];
}

- (void)updateTrackingAreas 
{
    [self removeTrackingArea:trackingArea];
    [trackingArea release];
    trackingArea = [[NSTrackingArea alloc] initWithRect:[self frame] options: (NSTrackingMouseEnteredAndExited | NSTrackingMouseMoved | NSTrackingActiveAlways ) owner:self userInfo:nil];
    [self addTrackingArea:trackingArea];
}

// event handling methods
- (BOOL)acceptsFirstResponder
{
    return YES;
}

// event handling methods
- (BOOL)acceptsFirstMouse
{
    return YES;
}

- (BOOL)acceptsMouseMovedEvents
{
    return YES;
}

- (void)mouseUp:(NSEvent *)event
{
    ASSERT( context );
    auto pos( [ event locationInWindow ] );
    context->on_touch_up( pos.x, pos.y );
}

- (void)mouseMoved:(NSEvent *)event
{
    ASSERT( context );
    auto pos( [ event locationInWindow ] );
    context->on_touch_move( pos.x, pos.y );
}

- (void)mouseDragged:(NSEvent *)event
{
    ASSERT( context );
    auto pos( [ event locationInWindow ] );
    context->on_touch_move(pos.x, pos.y);
}

- (void)mouseDown:(NSEvent *)event
{
    ASSERT( context );
    auto pos( [ event locationInWindow ] );
    context->on_touch_down(pos.x, pos.y);
}

@end
