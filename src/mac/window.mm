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
		impl()
			: window( nil )
		{
		    NSRect windowRect = NSMakeRect(0.0f, 0.0f, 1000.0f, 1000.0f);
    
		    TrackView * view = [ [ TrackView alloc ] initWithFrame:windowRect ];

		    window = [[NSWindow alloc] 
		        initWithContentRect:windowRect 
		        styleMask: (NSResizableWindowMask | NSClosableWindowMask | NSTitledWindowMask) 
		        backing:NSBackingStoreBuffered 
		        defer:NO];
		    [ window setContentView:view ];
		}

		void setContext(root_context * context)
		{
			ASSERT( window.contentView );
			[ window.contentView setContext: context];
            [ window makeKeyAndOrderFront:nil ];
        }

	};

	window::window() 
	: m_impl( new impl() )
	{}


	void window::setContext(root_context * ctx)
	{	
		ASSERT(m_impl.get());
		m_impl->setContext(ctx);
	}

}	// om636 