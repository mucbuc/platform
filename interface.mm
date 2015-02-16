#include "interface.h"

#include <lib/spawn/src/concrete_factory.h>
#include <lib/http-client/src/clients/mac.h>

namespace om636
{
	platform::platform()
		: m_impl( new concrete_factory< 
				impl_type, 
				type_link< http::mac_client< void, pltfrm::client_traits >, client_type > 
			> )
	{}

	auto platform::make_client() -> client_type * 
	{
		ASSERT( m_impl );
		return m_impl->create<client_type>();
	}
}	// om636