# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /work/HelloDDS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /work/HelloDDS/build

# Include any dependencies generated for this target.
include CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/flags.make

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.o: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/flags.make
CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.o: ../src/LoanableHelloWorld.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/HelloDDS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.o -c /work/HelloDDS/src/LoanableHelloWorld.cxx

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/HelloDDS/src/LoanableHelloWorld.cxx > CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.i

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/HelloDDS/src/LoanableHelloWorld.cxx -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.s

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.o: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/flags.make
CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.o: ../src/LoanableHelloWorldPubSubMain.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/HelloDDS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.o -c /work/HelloDDS/src/LoanableHelloWorldPubSubMain.cxx

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/HelloDDS/src/LoanableHelloWorldPubSubMain.cxx > CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.i

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/HelloDDS/src/LoanableHelloWorldPubSubMain.cxx -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.s

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.o: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/flags.make
CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.o: ../src/LoanableHelloWorldPubSubTypes.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/HelloDDS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.o -c /work/HelloDDS/src/LoanableHelloWorldPubSubTypes.cxx

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/HelloDDS/src/LoanableHelloWorldPubSubTypes.cxx > CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.i

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/HelloDDS/src/LoanableHelloWorldPubSubTypes.cxx -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.s

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.o: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/flags.make
CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.o: ../src/LoanableHelloWorldPublisher.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/HelloDDS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.o -c /work/HelloDDS/src/LoanableHelloWorldPublisher.cxx

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/HelloDDS/src/LoanableHelloWorldPublisher.cxx > CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.i

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/HelloDDS/src/LoanableHelloWorldPublisher.cxx -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.s

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.o: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/flags.make
CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.o: ../src/LoanableHelloWorldSubscriber.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/HelloDDS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.o -c /work/HelloDDS/src/LoanableHelloWorldSubscriber.cxx

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/HelloDDS/src/LoanableHelloWorldSubscriber.cxx > CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.i

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/HelloDDS/src/LoanableHelloWorldSubscriber.cxx -o CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.s

# Object files for target DDSHelloWorldExampleZeroCopy
DDSHelloWorldExampleZeroCopy_OBJECTS = \
"CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.o" \
"CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.o" \
"CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.o" \
"CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.o" \
"CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.o"

# External object files for target DDSHelloWorldExampleZeroCopy
DDSHelloWorldExampleZeroCopy_EXTERNAL_OBJECTS =

DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorld.cxx.o
DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubMain.cxx.o
DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPubSubTypes.cxx.o
DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldPublisher.cxx.o
DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/src/LoanableHelloWorldSubscriber.cxx.o
DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/build.make
DDSHelloWorldExampleZeroCopy: /usr/local/eprosima/fastrtps/lib/libfastrtps.so.2.4.1
DDSHelloWorldExampleZeroCopy: /usr/local/eprosima/fastcdr/lib/libfastcdr.so.1.0.22
DDSHelloWorldExampleZeroCopy: /usr/local/eprosima/foonathan_memory_vendor/lib/libfoonathan_memory-0.7.1.a
DDSHelloWorldExampleZeroCopy: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
DDSHelloWorldExampleZeroCopy: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
DDSHelloWorldExampleZeroCopy: /usr/lib/x86_64-linux-gnu/libssl.so
DDSHelloWorldExampleZeroCopy: /usr/lib/x86_64-linux-gnu/libcrypto.so
DDSHelloWorldExampleZeroCopy: CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/HelloDDS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable DDSHelloWorldExampleZeroCopy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/build: DDSHelloWorldExampleZeroCopy

.PHONY : CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/build

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/clean

CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/depend:
	cd /work/HelloDDS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/HelloDDS /work/HelloDDS /work/HelloDDS/build /work/HelloDDS/build /work/HelloDDS/build/CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DDSHelloWorldExampleZeroCopy.dir/depend

