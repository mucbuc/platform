#import <Cocoa/Cocoa.h>

#include <lib/platform/src/mac/TrackView.h>
#include <lib/platform/src/mac/window.h>
#include <lib/platform/src/mac/root_context.h>
#include <lib/context/src/interface.h>

#include <lib/sense/src/observer/same_scope.h>

#include <tmp/src/test.h>//assert

typedef om636::frame_swap<void> value_type;
typedef om636::context< value_type, om636::visual_subject > context_type;

namespace om636
{
	class window::impl
	{
		NSWindow * window;

	public:
		impl(root_context * context, float x, float y, float w, float h)
			: window( nil )
		{
		    NSRect windowRect = NSMakeRect(x, y, w, h);

		    window = [[NSWindow alloc] 
		        initWithContentRect:windowRect 
		        styleMask: (NSResizableWindowMask | NSClosableWindowMask | NSTitledWindowMask) 
		        backing:NSBackingStoreBuffered 
		        defer:NO];

		    TrackView * view = [ [ TrackView alloc ] initWithFrame:windowRect ];
		    [ view setContext: context ];
		    [ window setContentView:view ];
		    [ window makeKeyAndOrderFront:nil ];
		}
	};

	window::window(root_context * context, float x, float y, float w, float h)
	: m_impl( new impl(context, x, y, w, h) )
	{}

}	// om636 