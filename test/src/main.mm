#include <iostream>

#include "test.h"

#include <lib/platform/interface.h>

int main(int argc, const char * argv[])
{
    ASSERT( om636::platform().make_client() );
    
    om636::root_context context;
    ASSERT( om636::platform().make_window(0, 0, 100, 100, context) );

    ASSERT( om636::platform().make_label("hello", 10, 10, 200, 50) );

    return 0;
}
