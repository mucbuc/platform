#ifndef BACKGROUND_H_9320KWE2130
#define BACKGROUND_H_9320KWE2130

#include <lib/mac-opengl/src/glUtil.h>
#include <lib/sense/src/observer/same_scope.h>

namespace om636
{
	template<class T> 
	struct background
	: same_scope< T >
	{
		typedef T context_type; 
		typedef same_scope< context_type > base_type;

		background(context_type &);
		virtual ~background() = default;
		virtual void on_swap(const context_type &, const context_type &);
	};
}

#include "background.hxx"

#endif // BACKGROUND_H_9320KWE2130