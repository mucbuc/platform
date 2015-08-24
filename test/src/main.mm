#include <iostream>

#include "plank/src/test.h"
#include "lib/platform/interface.h"

int main(int argc, const char * argv[])
{
    ASSERT( om636::platform().make_client() );
    ASSERT( om636::platform().make_window() );
    return 0;
}
