cmake_minimum_required (VERSION 2.6.0)

project(basic_test)

set(CMAKE_CXX_FLAGS "-g -Wall")

add_library(project_lib cunitTest.cpp)

#add_subdirectory(lib/gtest-1.6.0)
enable_testing()

include_directories("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/test/lib/gtest-1.6.0/include")
include_directories("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/test/lib/gtest-1.6.0")

set(test_sources
	cunitTest.cpp
)

add_executable(runUnitTests ${test_sources})

target_link_libraries(runUnitTests gtest gtest_main)

target_link_libraries(runUnitTests project_lib)

add_test(sampleTest runUnitTests)