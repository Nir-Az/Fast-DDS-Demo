#include <boost/interprocess/managed_shared_memory.hpp>
#include <string>
#include <iostream>
#include "ShmPublisher.h"

void ShmPublisher::run( )
{
    using namespace boost::interprocess;

    //Remove shared memory on construction and destruction
    struct shm_remove
    {
        shm_remove() { shared_memory_object::remove("MySharedMemory"); }
        ~shm_remove(){ shared_memory_object::remove("MySharedMemory"); }
    } remover;

    managed_shared_memory managed_shm(create_only, "MySharedMemory", 10000*sizeof(std::size_t));

    char *ptr = managed_shm.template construct<char>("my_string")[100]();
    strcpy(ptr,"Writer Hello World");
    std::cin.ignore();
}
