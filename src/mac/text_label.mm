#include "text_label.h"

namespace om636
{
    /////////////////////////////////////////////////////////////////////////////////////////////
    // text_label
    /////////////////////////////////////////////////////////////////////////////////////////////
    text_label::text_label(const char * text)
    : m_label( [ [ NSTextField alloc ] init ] )
    {
        [ m_label setTextColor:[ NSColor blackColor] ];
        [ m_label setStringValue:[ NSString stringWithUTF8String:text ] ];
        //[ [ [ NSApplication sharedApplication ] keyWindow ] addSubview:m_label ];
    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    text_label::text_label(const char * text, double left, double top, double right, double bottom)
    : text_label(text)
    {
        set_bounds(left, top, right, bottom);
    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    text_label::~text_label()
    {
        [ m_label removeFromSuperview ];
    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    void text_label::set_bounds( double left, double top, double right, double bottom )
    {
        [ m_label setFrame:CGRectMake(left, top, right - left, bottom - top ) ];
    }

    /////////////////////////////////////////////////////////////////////////////////////////////
    void text_label::set_opacity( double opacity )
    {
        [ m_label setAlpha:opacity ];
    }
}   // om636