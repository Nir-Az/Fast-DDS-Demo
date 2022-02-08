**TODO - this example was interrupted and canceled, do not use this example!**

On this example I wanted to use a combination of boost::interprocess shared memory for read_only access.

The fastDDS writer will write to the topic the allocated shared_memory address

The fastDDS reader will read the address from it's topic and open it for read_onlyto the topic the read_only allocated shared_memory address



Run 



./ShmExample publisher

./ShmExample subscriber

TODO - continue