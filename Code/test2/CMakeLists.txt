cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )

include_directories(${gtest_SOURCE_DIR}/include)
set(test_sources
	cunitTest.c
)
add_executable(sample_tests ${test_sources})
target_link_libraries(sample_tests gtest_main)