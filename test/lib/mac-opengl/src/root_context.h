#ifndef ROOT_CONTEXT_1430KGKGKGE0QQRKRT
#define ROOT_CONTEXT_1430KGKGKGE0QQRKRT

#include <lib/context/src/interface.h>
#include <lib/objectify/src/visual_base.h>

namespace om636
{
	struct root_context 
	{

		void render();
        
        void on_touch_up(double x, double y);
        void on_touch_down(double x, double y);
        void on_touch_move(double x, double y);
	
		typedef frame_swap<void> value_type;
		typedef context< value_type, visual_subject > visual_context_type;

		visual_context_type m_visual_root;
	};
}

#endif //ROOT_CONTEXT_1430KGKGKGE0QQRKRT