

#include <memory>
#include <string.h>
#include <iostream>
#include "ShmPublisher.h"
#include "ShmSubscriber.h"

using namespace std;
int main(
        int argc,
        char** argv)
{
    int type = 0;
    bool slow = false;
    bool simulate = false;
    bool use_copy = false;

    if ( argc >= 2 )
    {
        if (argc == 2 && strcmp(argv[1], "publisher") == 0)
        {
            type = 1;
        }
        else if (argc == 3 && strcmp(argv[1], "publisher") == 0 && strcmp(argv[2], "sim") == 0)
        {
            type = 1;
            simulate = true;
        }
        else if (argc == 2 && strcmp(argv[1], "subscriber") == 0)
        {

            type = 2;
        }
        else if (argc == 3 && strcmp(argv[1], "subscriber") == 0 && strcmp(argv[2], "slow") == 0)
        {
            type = 2;
            slow = true;
        }
        else if (argc == 3 && (strcmp(argv[1], "subscriber") == 0 && strcmp(argv[2], "use_copy") == 0))
        {
            type = 2;
            use_copy = true;
        }
        else if (argc == 4 && strcmp(argv[1], "subscriber") == 0 && 
        ((strcmp(argv[2], "use_copy") == 0 && strcmp(argv[3], "slow") == 0) || 
        (strcmp(argv[2], "slow") == 0) && strcmp(argv[3], "use_copy") == 0))
        {
            type = 2;
            use_copy = slow = true;
        }
    }
    

    if (type == 0)
    {
        std::cout << "Error: Incorrect arguments." << std::endl;
        std::cout << "Usage: " << std::endl << std::endl;
        std::cout << argv[0] << " publisher|subscriber" << std::endl << std::endl;
        return 0;
    }

    std::cout << "Starting... " << std::endl;

    // Register the type being used

    switch (type)
    {
        case 1:
        {
            ShmPublisher mypub;
            mypub.run( );
            std::cin.ignore();
            break;
        }
        case 2:
        {
            ShmSubscriber mysub;
            mysub.run();
            std::cin.ignore();
            break;
        }
    }

    return 0;
}
