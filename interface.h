#ifndef INTERFACE_H_L345L3JKL34K7867876
#define INTERFACE_H_L345L3JKL34K7867876

#include "plank/src/test.h"

#include <memory>

#include <lib/http-client/src/client.h>
#include <lib/http-client/src/request.h>
#include <lib/http-client/src/response.h>
#include <lib/spawn/src/abstract_factory.h>

namespace om636
{
	// where's the mac-opengl forward header? 
	class window;
	class application;

	namespace pltfrm
	{
		template<class>
		struct test_traits
		{
			typedef std::string string_type;
		};

		typedef http::BasicRequest< test_traits > request_type;
		typedef http::BasicResponse< test_traits > response_type;

		template<class>
		struct client_traits
		{
			typedef request_type request_type;
			typedef response_type response_type;
	        typedef std::function<void(response_type)> function_type;
	    };
	}

	struct platform 
	{
	private:
        typedef http::Client< void, pltfrm::client_traits > client_type;
        typedef om636::window window_type;
        typedef om636::application application_type; 
		typedef abstract_factory< abstract_unit, client_type, window_type, application_type > impl_type;
		std::shared_ptr< impl_type > m_impl;

	public:
		
		platform();
		virtual ~platform() = default;
		client_type * make_client();
		window_type * make_window();
		application_type * make_application();
	}; 

} // om636

#endif
