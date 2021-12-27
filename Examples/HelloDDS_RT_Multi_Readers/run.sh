#!/usr/bin/bash
echo "lunching publisher"
./build/DDSHelloWorldExampleZeroCopy publisher &
sleep 2
echo "lunching subscriber I"
./build/DDSHelloWorldExampleZeroCopy subscriber &
sleep 2
echo "lunching subscriber 2"
./build/DDSHelloWorldExampleZeroCopy subscriber
