cmake_minimum_required (VERSION 2.6.0)

set(_ECLIPSE_VERSION "8.5.0" )



set(CMAKE_SYSTEM_NAME Arduino)
set(CMAKE_ARDUINO_PATH "C:/Arduino")
set(ARDUINO_SDK_PATH "C:/Arduino")
set(CMAKE_C_COMPILER   "C:/Arduino/hardware/tools/avr/bin/avr-gcc.exe")
set(CMAKE_CXX_COMPILER "C:/Arduino/hardware/tools/avr/bin/avr-g++.exe")
SET(CSTANDARD "-std=gnu99")
SET(CDEBUG "-gstabs")
SET(CWARN "-Wall -Wstrict-prototypes -ffunction-sections -fdata-sections -DARDUINO=100")
SET(COPT "-Os")
SET(CMCU "-mmcu=atmega32u4")  
SET(CDEFS "-DF_CPU=16000000L")  
SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${COPT} ${CWARN} ${CSTANDARD} ${CINCS} ${CEXTRA}")  
SET(CXXFLAGS "${CMCU} ${CSTANDARD} ${CDEFS} ${COPT} ") 
SET(CMAKE_C_FLAGS  ${CFLAGS})
SET(CMAKE_CXX_FLAGS ${CXXFLAGS})
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")

project (hexFileErstellung) #CMake Projekt Namen vergeben

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")


MESSAGE(STATUS "\n ------------------------------->Creating Projekt...")
set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_C_OUTPUT_EXTENSION ".o")

add_executable(test.o test.c)


AVR_CREATE_HEX(test.o)