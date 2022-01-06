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

add_executable(ShmReadOnly ${SOURCES_CXX} ${SOURCES_CPP} ${SOURCES_H})
target_link_libraries(ShmReadOnly fastcdr fastrtps)

