cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")


project (Source)


SET(CSTANDARD "-std=gnu99")

SET(CDEBUG "-gstabs")

SET(CWARN "-Wall -Wstrict-prototypes")


SET(COPT "-Os")



SET(CMCU "-mmcu=atmega32u4")  

SET(CDEFS "-DF_CPU=16000000L")  

SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${COPT} ${CWARN} ${CSTANDARD} ${CINCS} ${CEXTRA}")   

SET(CMAKE_C_FLAGS  ${CFLAGS})




MESSAGE(STATUS "\n ----------JONAS---------------------->Creating Test-Projekt...")


set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_C_OUTPUT_EXTENSION ".o")

#ENABLE_LANGUAGE(ASM)

add_executable(test.o test.c)

AVR_CREATE_HEX(test.o)

