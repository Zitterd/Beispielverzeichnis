cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")

project (hexFileErstellung) #CMake Projekt Namen vergeben

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")

#add_subdirectory(gtest-1.7.0)        						            ##
#add_subdirectory(test)									    ##

MESSAGE(STATUS "\n ------------------------------->Creating Projekt...")

set(CMAKE_VERBOSE_MAKEFILE true) #Make Output in der Konsole sichtbar 
set(CMAKE_C_OUTPUT_EXTENSION ".o")

add_executable(test.o test.c)


AVR_CREATE_HEX(test.o)