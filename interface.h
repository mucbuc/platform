#ifndef INTERFACE_H_L345L3JKL34K7867876
#define INTERFACE_H_L345L3JKL34K7867876

#include <memory>
#include <functional>

#include <lib/http-client/src/client.h>
#include <lib/http-client/src/request.h>
#include <lib/http-client/src/response.h>
#include <lib/platform/src/mac/root_context.h>

#include <tmp/src/test.h>

namespace om636
{
	// where's the mac-opengl forward header? 
	class window;

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
	    typedef http::Client< void, pltfrm::client_traits > client_type;
        typedef om636::window window_type;
		
		static client_type * make_client();
		static window_type * make_window(float x, float y, float w, float h, root_context &);
	}; 

} // om636

#endif
