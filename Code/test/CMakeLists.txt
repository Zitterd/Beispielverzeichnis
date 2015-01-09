cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )
project(basic_test)

add_subdirectory(/../gtest-1.7.0)
enable_testing()

include_directories("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/gtest-1.7.0/include")
include_directories("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/gtest-1.7.0")

set(test_sources
	cunitTest.c
)

add_executable(sample_tests ${test_sources})

target_link_libraries(sample_tests gtest_main)
add_test(sample_tests sample_tests)