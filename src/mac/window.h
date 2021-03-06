#ifndef WINDOW_H_INCLUDEGUARD_32LE0W0W2323854
#define WINDOW_H_INCLUDEGUARD_32LE0W0W2323854

#include <memory>

namespace om636
{

	class root_context; 
	class window
	{
		class impl;
		std::unique_ptr< impl > m_impl;

    public:
		
		window(root_context &, float, float, float, float);
		~window() = default;

		window(const window &) = delete;
		window & operator=(const window &) = delete;
	};
}

#endif // WINDOW_H_INCLUDEGUARD_32LE0W0W2323854