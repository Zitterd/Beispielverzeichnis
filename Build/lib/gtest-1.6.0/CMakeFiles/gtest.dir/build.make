# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.1

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build"

# Include any dependencies generated for this target.
include lib/gtest-1.6.0/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include lib/gtest-1.6.0/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include lib/gtest-1.6.0/CMakeFiles/gtest.dir/flags.make

lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj: lib/gtest-1.6.0/CMakeFiles/gtest.dir/flags.make
lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj: C:/Users/Jonas\ Hamers/Desktop/Beispielverzeichnis/Code/lib/gtest-1.6.0/src/gtest-all.cc
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj"
	cd /d C:\Users\JONASH~1\Desktop\BEISPI~1\Build\lib\GTEST-~1.0 && C:\Arduino\hardware\tools\avr\bin\avr-g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\gtest.dir\src\gtest-all.cc.obj -c "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\lib\gtest-1.6.0\src\gtest-all.cc"

lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /d C:\Users\JONASH~1\Desktop\BEISPI~1\Build\lib\GTEST-~1.0 && C:\Arduino\hardware\tools\avr\bin\avr-g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\lib\gtest-1.6.0\src\gtest-all.cc" > CMakeFiles\gtest.dir\src\gtest-all.cc.i

lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /d C:\Users\JONASH~1\Desktop\BEISPI~1\Build\lib\GTEST-~1.0 && C:\Arduino\hardware\tools\avr\bin\avr-g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\lib\gtest-1.6.0\src\gtest-all.cc" -o CMakeFiles\gtest.dir\src\gtest-all.cc.s

lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires:
.PHONY : lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires

lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides: lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires
	$(MAKE) -f lib\gtest-1.6.0\CMakeFiles\gtest.dir\build.make lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides.build
.PHONY : lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides

lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.provides.build: lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.obj"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

lib/gtest-1.6.0/libgtest.a: lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj
lib/gtest-1.6.0/libgtest.a: lib/gtest-1.6.0/CMakeFiles/gtest.dir/build.make
lib/gtest-1.6.0/libgtest.a: lib/gtest-1.6.0/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgtest.a"
	cd /d C:\Users\JONASH~1\Desktop\BEISPI~1\Build\lib\GTEST-~1.0 && $(CMAKE_COMMAND) -P CMakeFiles\gtest.dir\cmake_clean_target.cmake
	cd /d C:\Users\JONASH~1\Desktop\BEISPI~1\Build\lib\GTEST-~1.0 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gtest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/gtest-1.6.0/CMakeFiles/gtest.dir/build: lib/gtest-1.6.0/libgtest.a
.PHONY : lib/gtest-1.6.0/CMakeFiles/gtest.dir/build

lib/gtest-1.6.0/CMakeFiles/gtest.dir/requires: lib/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.obj.requires
.PHONY : lib/gtest-1.6.0/CMakeFiles/gtest.dir/requires

lib/gtest-1.6.0/CMakeFiles/gtest.dir/clean:
	cd /d C:\Users\JONASH~1\Desktop\BEISPI~1\Build\lib\GTEST-~1.0 && $(CMAKE_COMMAND) -P CMakeFiles\gtest.dir\cmake_clean.cmake
.PHONY : lib/gtest-1.6.0/CMakeFiles/gtest.dir/clean

lib/gtest-1.6.0/CMakeFiles/gtest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\lib\gtest-1.6.0" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\lib\gtest-1.6.0" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\lib\gtest-1.6.0\CMakeFiles\gtest.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : lib/gtest-1.6.0/CMakeFiles/gtest.dir/depend

