#ifndef APPLICATION_H_104KP429JNKC9332DJL
#define APPLICATION_H_104KP429JNKC9332DJL

#include <memory>

namespace om636
{
	class application
	{
		class impl;
		std::unique_ptr< impl > m_impl;
	public:
		
		application();
		~application() = default;

		application(const application &) = delete;
		application & operator=(const application &) = delete;
	};
}

#endif // APPLICATION_H_104KP429JNKC9332DJL