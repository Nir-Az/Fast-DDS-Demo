On this example I wanted to make sure that if I open a boost::interprocess shared memory as read_only access, only read is permitted.

When I try to write the process crashes as expected.



Run



./ShmExample publisher

./ShmExample subscriber

Then on the subscriber terminal press `Enter` key, the process will try to write and than crash.