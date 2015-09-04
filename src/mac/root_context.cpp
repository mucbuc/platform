
#include <lib/platform/src/mac/glUtil.h>
#include <lib/platform/src/mac/root_context.h>
#include <lib/objectify/src/visual_base.h>

namespace om636
{
	void root_context::render()
	{
		m_visual_root = value_type();
	}

    void root_context::on_touch_up(double x, double y)
    {
        std::cout << "on_touch_up" << " " << x << " " << y << std::endl;
    }
    
    void root_context::on_touch_down(double x, double y)
    {
        std::cout << "on_touch_down" << " " << x << " " << y << std::endl;
    }
    
    void root_context::on_touch_move(double x, double y)
    {
        std::cout << "on_touch_move" << " " << x << " " << y << std::endl;
    }
    
} // om636