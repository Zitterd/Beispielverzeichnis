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
CMAKE_SOURCE_DIR = "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\test"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\test"

# Include any dependencies generated for this target.
include CMakeFiles/project_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/project_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project_lib.dir/flags.make

CMakeFiles/project_lib.dir/cunitTest.cpp.obj: CMakeFiles/project_lib.dir/flags.make
CMakeFiles/project_lib.dir/cunitTest.cpp.obj: CMakeFiles/project_lib.dir/includes_CXX.rsp
CMakeFiles/project_lib.dir/cunitTest.cpp.obj: C:/Users/Jonas\ Hamers/Desktop/Beispielverzeichnis/Code/test/cunitTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\test\CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/project_lib.dir/cunitTest.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\project_lib.dir\cunitTest.cpp.obj -c "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\test\cunitTest.cpp"

CMakeFiles/project_lib.dir/cunitTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project_lib.dir/cunitTest.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\test\cunitTest.cpp" > CMakeFiles\project_lib.dir\cunitTest.cpp.i

CMakeFiles/project_lib.dir/cunitTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project_lib.dir/cunitTest.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\test\cunitTest.cpp" -o CMakeFiles\project_lib.dir\cunitTest.cpp.s

CMakeFiles/project_lib.dir/cunitTest.cpp.obj.requires:
.PHONY : CMakeFiles/project_lib.dir/cunitTest.cpp.obj.requires

CMakeFiles/project_lib.dir/cunitTest.cpp.obj.provides: CMakeFiles/project_lib.dir/cunitTest.cpp.obj.requires
	$(MAKE) -f CMakeFiles\project_lib.dir\build.make CMakeFiles/project_lib.dir/cunitTest.cpp.obj.provides.build
.PHONY : CMakeFiles/project_lib.dir/cunitTest.cpp.obj.provides

CMakeFiles/project_lib.dir/cunitTest.cpp.obj.provides.build: CMakeFiles/project_lib.dir/cunitTest.cpp.obj

# Object files for target project_lib
project_lib_OBJECTS = \
"CMakeFiles/project_lib.dir/cunitTest.cpp.obj"

# External object files for target project_lib
project_lib_EXTERNAL_OBJECTS =

libproject_lib.a: CMakeFiles/project_lib.dir/cunitTest.cpp.obj
libproject_lib.a: CMakeFiles/project_lib.dir/build.make
libproject_lib.a: CMakeFiles/project_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libproject_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles\project_lib.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\project_lib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project_lib.dir/build: libproject_lib.a
.PHONY : CMakeFiles/project_lib.dir/build

CMakeFiles/project_lib.dir/requires: CMakeFiles/project_lib.dir/cunitTest.cpp.obj.requires
.PHONY : CMakeFiles/project_lib.dir/requires

CMakeFiles/project_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\project_lib.dir\cmake_clean.cmake
.PHONY : CMakeFiles/project_lib.dir/clean

CMakeFiles/project_lib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\test" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Code\test" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\test" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\test" "C:\Users\Jonas Hamers\Desktop\Beispielverzeichnis\Build\test\CMakeFiles\project_lib.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/project_lib.dir/depend

