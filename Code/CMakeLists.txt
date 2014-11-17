cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")

project (Source)


INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")

MESSAGE(STATUS "\n ----------JONAS---------------------->Creating Test-Projekt...")

IF( NOT CMAKE_BUILD_TYPE )
   SET( CMAKE_BUILD_TYPE Release ... FORCE )
ENDIF()

SET(MAIN_FILE
        test.c)

set(CMAKE_VERBOSE_MAKEFILE true)
#set(CMAKE_C_OUTPUT_EXTENSION ".o")

#ENABLE_LANGUAGE(ASM)

add_executable(test.o test.c)

AVR_CREATE_HEX(test.o)


