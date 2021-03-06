#include "interface.h"

#include <tmp/src/test.h>

#include <lib/http-client/src/clients/mac.h>
#include <lib/platform/src/mac/window.h>
#include <lib/spawn/src/concrete_factory.h>

namespace om636
{
	auto platform::make_client() -> client_type * 
	{
		return new http::mac_client< void, pltfrm::client_traits >();
	}

	auto platform::make_window(float x, float y, float w, float h, root_context & context) -> window_type * 
	{
        return new om636::window(context, x, y, w, h);
	}

	auto platform::make_label(const char * text, float left, float top, float right, float bottom) -> text_label *
	{
		return new om636::text_label(text, left, top, right, bottom);
	}
   
}	// om636