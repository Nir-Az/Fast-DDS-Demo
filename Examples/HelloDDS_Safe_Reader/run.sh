echo "lunching publisher"
./build/DDSHelloWorldExampleZeroCopy publisher sim &
sleep 2
echo "lunching slow subscriber"
./build/DDSHelloWorldExampleZeroCopy subscriber slow use_copy &
sleep 2
echo "lunching subscriber 2"
./build/DDSHelloWorldExampleZeroCopy subscriber use_copy

