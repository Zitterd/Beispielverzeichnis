#cmake_minimum_required (VERSION 2.6.0)
#set(_ECLIPSE_VERSION "8.5.0" )








#INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
#INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")
#project (Source)

#SET(CDEFS "-DF_CPU=16000000L")
#SET(CMCU "-mmcu=atmega32u4") 
#SET(COPT "-Os")
#SET(CSTANDARD "-std=gnu99")
#SET(CFLAGS "${CMCU} ${CDEFS} ${COPT}  ${CSTANDARD} ")
#SET(CMAKE_C_FLAGS  ${CFLAGS})


MESSAGE(STATUS "\n ----------JONAS---------------------->Creating Test-Projekt...")

#IF( NOT CMAKE_BUILD_TYPE )
#   SET( CMAKE_BUILD_TYPE Release ... FORCE )
#ENDIF()

#SET(MAIN_FILE
 #       test.c)

#set(CMAKE_VERBOSE_MAKEFILE true)
#set(CMAKE_C_OUTPUT_EXTENSION ".o")

##ENABLE_LANGUAGE(ASM)

#add_executable(test.o test.c)

#AVR_CREATE_HEX(test.o)














# Cross-compiling can only be done with v2.6 or later

cmake_minimum_required(VERSION 2.6)

set(_ECLIPSE_VERSION "8.5.0" )

project (Source)

INCLUDE_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/arduino/variants/standard")

INCLUDE_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/arduino/cores/arduino")

INCLUDE_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/tools/avr/avr/include")

INCLUDE_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/tools/avr/avr/include/avr")

INCLUDE_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/avr5")


set(CMAKE_SYSTEM_NAME Arduino)
set(CMAKE_C_COMPILER   avr-gcc)

# Set the target AVR device
set(AVR_TARGET_DEVICE atmega32u4)


# Set the GCC flags required

set(CMAKE_C_FLAGS "-g -Wall -Os -mmcu=${AVR_TARGET_DEVICE}")

#set(CMAKE_VERBOSE_MAKEFILE true)

set(CMAKE_C_OUTPUT_EXTENSION ".o")


# Allow assembly files to be built

# ENABLE_LANGUAGE(ASM)


# Make the executable

add_executable(test.elf test.c)