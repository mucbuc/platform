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
        root_context * m_context;

    public:
		
		window();
		~window() = default;

		void setFrame(float, float, float, float);
		void setContext(root_context *);

		window(const window &) = delete;
		window & operator=(const window &) = delete;
	};
}

#endif // WINDOW_H_INCLUDEGUARD_32LE0W0W2323854