#include "interface.h"

#include <lib/http-client/src/clients/mac.h>
#include <lib/mac-opengl/src/window.h>
#include <lib/spawn/src/concrete_factory.h>

namespace om636
{
	platform::platform()
		: m_impl( new concrete_factory< 
				impl_type, 
				type_link< http::mac_client< void, pltfrm::client_traits >, client_type >,
				type_link< om636::window, window_type > 
			> )
	{}

	auto platform::make_client() -> client_type * 
	{
		ASSERT( m_impl != 0 );
		return m_impl->create<client_type>();
	}

	auto platform::make_window() -> window_type * 
	{
		ASSERT( m_impl != 0 ); 
        return m_impl->create<window_type>();
	}
}	// om636