#import <Cocoa/Cocoa.h>

#include <lib/mac-opengl/src/TrackView.h>
#include <lib/mac-opengl/src/window.h>
#include <lib/mac-opengl/src/root_context.h>
#include <lib/context/src/interface.h>
#include <lib/mac-opengl/src/background.h>

#include <lib/sense/src/observer/same_scope.h>


typedef om636::frame_swap<void> value_type;
typedef om636::context< value_type, om636::visual_subject > context_type;

namespace om636
{
	class window::impl
	{
		NSWindow * window;


	public:
		impl()
			: window( nil )
		{
		    NSRect windowRect = NSMakeRect(0.0f, 0.0f, 1000.0f, 1000.0f);
    
		    TrackView * view = [ [ TrackView alloc ] initWithFrame:windowRect ];
		    
		    auto context( new om636::root_context );
		    [ view setContext:context ];

            static background< om636::root_context::visual_context_type > bg( context->m_visual_root );

		    window = [[NSWindow alloc] 
		        initWithContentRect:windowRect 
		        styleMask: (NSResizableWindowMask | NSClosableWindowMask | NSTitledWindowMask) 
		        backing:NSBackingStoreBuffered 
		        defer:NO];
		    [ window setContentView:view ];
		    [ window makeKeyAndOrderFront:nil ];
		}
	};

	window::window() 
	: m_impl( new impl() )
	{}

}	// om636 