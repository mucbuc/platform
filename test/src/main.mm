#include <iostream>

#include "plank/src/test.h"
#include "lib/platform/interface.h"

int main(int argc, const char * argv[])
{
    std::cout <<"hello"<< std::endl;
    om636::platform().make_client();

	return 0;
}
