cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )

#INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")

set(CMAKE_ARDUINO_PATH "C:/Arduino") 
set(CMAKE_SYSTEM_NAME Arduino)
set(CMAKE_C_COMPILER   "C:/Arduino/hardware/tools/avr/bin/avr-gcc.exe")
SET(CSTANDARD "-std=gnu99")   
SET(CDEBUG "-gstabs")
SET(CWARN "-Wall -Wstrict-prototypes")
SET(COPT "-Os")
SET(CMCU "-mmcu=atmega32u4")
SET(CDEFS "-DF_CPU=16000000L")  
SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${COPT} ${CWARN} ${CSTANDARD} ${CINCS} ${CEXTRA}") #${CTUNING}
SET(CMAKE_C_FLAGS  ${CFLAGS})

project (hexFileErstellung) #CMake Projekt Namen vergeben

SET(CSTANDARD "-std=gnu99")   
SET(CDEBUG "-gstabs")
SET(CWARN "-Wall -Wstrict-prototypes")
SET(COPT "-Os")
SET(CMCU "-mmcu=atmega32u4")
SET(CDEFS "-DF_CPU=16000000L")  
SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${COPT} ${CWARN} ${CSTANDARD} ${CINCS} ${CEXTRA}") #${CTUNING}
SET(CMAKE_C_FLAGS  ${CFLAGS})


#INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")
                                                                  #

#add_subdirectory(test/lib/gtest-1.6.0)        						    ##
add_subdirectory(test)									    ##

MESSAGE(STATUS "\n ------------------------------->Creating Projekt...")

set(CMAKE_VERBOSE_MAKEFILE true) #Make Output in der Konsole sichtbar 
set(CMAKE_C_OUTPUT_EXTENSION ".o")

add_executable(test.o test.c)


AVR_CREATE_HEX(test.o)