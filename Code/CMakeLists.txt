cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")

project (hexFileErstellung) #CMake Projekt Namen vergeben

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")

add_library(project_lib cunitTest.cpp)							                   #
add_subdirectory(lib/gtest-1.6.0)                                                                          #
enable_testing()                                                                                           #
include_directories("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/test/lib/gtest-1.6.0/include") #
include_directories("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/test/lib/gtest-1.6.0")         #
set(test_sources          										   #
	cunitTest.cpp											   #
)													   #
add_executable(runUnitTests ${test_sources})                                                               #
target_link_libraries(runUnitTests gtest gtest_main)                                                       #
target_link_libraries(runUnitTests project_lib)                                                            #
add_test(sampleTest runUnitTests)                                                                          #


#add_subdirectory(test/lib/gtest-1.6.0)        						    ##
#add_subdirectory(test)									    ##

MESSAGE(STATUS "\n ------------------------------->Creating Projekt...")

set(CMAKE_VERBOSE_MAKEFILE true) #Make Output in der Konsole sichtbar 
set(CMAKE_C_OUTPUT_EXTENSION ".o")

add_executable(test.o test.c)


AVR_CREATE_HEX(test.o)