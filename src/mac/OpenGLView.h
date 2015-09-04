#import <Cocoa/Cocoa.h>
#import <QuartzCore/CVDisplayLink.h>

@interface OpenGLView : NSOpenGLView
{
	CVDisplayLinkRef displayLink;
}

- (void) contextLock;
- (void) contextOpen; 

@end
