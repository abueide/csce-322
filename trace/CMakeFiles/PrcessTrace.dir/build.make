# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ugrad/abueide/trace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ugrad/abueide/trace

# Include any dependencies generated for this target.
include CMakeFiles/PrcessTrace.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PrcessTrace.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PrcessTrace.dir/flags.make

CMakeFiles/PrcessTrace.dir/PrcessTrace.c.o: CMakeFiles/PrcessTrace.dir/flags.make
CMakeFiles/PrcessTrace.dir/PrcessTrace.c.o: PrcessTrace.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ugrad/abueide/trace/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PrcessTrace.dir/PrcessTrace.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/PrcessTrace.dir/PrcessTrace.c.o   -c /home/ugrad/abueide/trace/PrcessTrace.c

CMakeFiles/PrcessTrace.dir/PrcessTrace.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PrcessTrace.dir/PrcessTrace.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ugrad/abueide/trace/PrcessTrace.c > CMakeFiles/PrcessTrace.dir/PrcessTrace.c.i

CMakeFiles/PrcessTrace.dir/PrcessTrace.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PrcessTrace.dir/PrcessTrace.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ugrad/abueide/trace/PrcessTrace.c -o CMakeFiles/PrcessTrace.dir/PrcessTrace.c.s

# Object files for target PrcessTrace
PrcessTrace_OBJECTS = \
"CMakeFiles/PrcessTrace.dir/PrcessTrace.c.o"

# External object files for target PrcessTrace
PrcessTrace_EXTERNAL_OBJECTS =

PrcessTrace: CMakeFiles/PrcessTrace.dir/PrcessTrace.c.o
PrcessTrace: CMakeFiles/PrcessTrace.dir/build.make
PrcessTrace: CMakeFiles/PrcessTrace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ugrad/abueide/trace/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PrcessTrace"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PrcessTrace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PrcessTrace.dir/build: PrcessTrace

.PHONY : CMakeFiles/PrcessTrace.dir/build

CMakeFiles/PrcessTrace.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PrcessTrace.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PrcessTrace.dir/clean

CMakeFiles/PrcessTrace.dir/depend:
	cd /home/ugrad/abueide/trace && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ugrad/abueide/trace /home/ugrad/abueide/trace /home/ugrad/abueide/trace /home/ugrad/abueide/trace /home/ugrad/abueide/trace/CMakeFiles/PrcessTrace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PrcessTrace.dir/depend

