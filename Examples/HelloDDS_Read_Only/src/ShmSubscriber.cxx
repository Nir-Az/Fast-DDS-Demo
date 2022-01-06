#include <boost/interprocess/managed_shared_memory.hpp>
#include <string>
#include <iostream>
#include "ShmSubscriber.h"

void ShmSubscriber::run()
{
    using namespace boost::interprocess;

    std::cout << "Open shared memory as 'open_read_only' " << std::endl;
    managed_shared_memory segment(open_read_only, "MySharedMemory");

    char *ptr = segment.template find<char>("my_string").first;

    std::cout << "Print the stored string" << std::endl;
    std::string s(ptr);
    std::cout << s <<std::endl;

    std::cout << "After pressing Enter we will try to write on the shared memory address,\nThis action should crash the application" << std::endl;
    std::cin.ignore();

    std::cout << "Tring to write..." << std::endl;
    // This should fail on read_only mode
    strcpy(ptr,"Reader Hello World");
    std::cout << "Rread was able to write!! Ohh Noo!!" << std::endl;
    std::cin.ignore();

}

