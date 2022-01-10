cmake_minimum_required(VERSION 3.12.4)
#3.12.4

project(ShmReadOnly)


# Find requirements
if(NOT fastcdr_FOUND)
    find_package(fastcdr REQUIRED)
endif()

if(NOT fastrtps_FOUND)
    find_package(fastrtps REQUIRED)
endif()

# Set C++11
include(CheckCXXCompilerFlag)
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_COMPILER_IS_CLANG OR
        CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    check_cxx_compiler_flag(-std=c++11 SUPPORTS_CXX11)
    if(SUPPORTS_CXX11)
        add_compile_options(-std=c++11)
    else()
        message(FATAL_ERROR "Compiler doesn't support C++11")
    endif()
endif()

message(STATUS "Configuring example...")
file(GLOB SOURCES_CXX "src/*.cxx")
file(GLOB SOURCES_CPP "src/*.cpp")
file(GLOB SOURCES_H "src/*.h")
file(GLOB SOURCES_HPP "src/*.hpp")


add_executable(ShmReadOnly ${SOURCES_CXX} ${SOURCES_CPP} ${SOURCES_H} ${SOURCES_HPP})
target_link_libraries(ShmReadOnly fastcdr fastrtps "C:/Program Files (x86)/Intel RealSense SDK 2.0/lib/x64/realsense2.lib")
target_include_directories(ShmReadOnly PUBLIC ${PROJECT_SOURCE_DIR}/third-party/boost/include "C:/Program Files (x86)/Intel RealSense SDK 2.0/include")

# Boost.Interprocess depends on Boost.DateTime, which needs separate compilation. 
# However, the subset used by Boost.Interprocess does not need any separate compilation 
# so the user can define BOOST_DATE_TIME_NO_LIB to avoid Boost from trying to automatically link the Boost.DateTime.
add_definitions(-DBOOST_DATE_TIME_NO_LIB)


