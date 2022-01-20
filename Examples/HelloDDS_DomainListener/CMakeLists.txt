cmake_minimum_required(VERSION 2.8.12)

if(NOT CMAKE_VERSION VERSION_LESS 3.0)
    cmake_policy(SET CMP0048 NEW)
endif()

project(DDSHelloWorldExampleDataSharing)

# Find requirements
if(NOT fastcdr_FOUND)
    find_package(fastcdr REQUIRED)
endif()

if(NOT fastrtps_FOUND)
    find_package(fastrtps REQUIRED)
endif()

#Check C++11
include(CheckCXXCompilerFlag)
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_COMPILER_IS_CLANG OR
        CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    check_cxx_compiler_flag(-std=c++11 SUPPORTS_CXX11)
    if(NOT SUPPORTS_CXX11)
        message(FATAL_ERROR "Compiler doesn't support C++11")
    endif()
endif()

message(STATUS "Configuring HelloWorld example...")
file(GLOB DDS_HELLOWORLD_EXAMPLE_DATASHARING_SOURCES_CXX "src/*.cxx")
file(GLOB DDS_HELLOWORLD_EXAMPLE_DATASHARING_SOURCES_CPP "src/*.cpp")

add_executable(DDSHelloWorldExampleDataSharing
    ${DDS_HELLOWORLD_EXAMPLE_DATASHARING_SOURCES_CXX}
    ${DDS_HELLOWORLD_EXAMPLE_DATASHARING_SOURCES_CPP})
target_link_libraries(DDSHelloWorldExampleDataSharing fastrtps fastcdr realsense2)
