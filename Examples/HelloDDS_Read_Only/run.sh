echo "lunching publisher"
./build/DDSHelloWorldExampleZeroCopy publisher &
sleep 2
echo "lunching subscriber I"
./build/DDSHelloWorldExampleZeroCopy subscriber 


