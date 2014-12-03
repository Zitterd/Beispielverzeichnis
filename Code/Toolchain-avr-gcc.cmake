INCLUDE_DIRECTORIES("C:/Arduino/hardware/arduino/cores/arduino")
INCLUDE_DIRECTORIES("C:/Arduino/hardware/tools/avr/avr/include")
INCLUDE_DIRECTORIES("C:/Arduino/hardware/arduino/variants/leonardo")

set(CMAKE_ARDUINO_PATH "C:/Arduino") 
set(CMAKE_SYSTEM_NAME Arduino)

set(CMAKE_C_COMPILER   "C:/Arduino/hardware/tools/avr/bin/avr-gcc.exe")
set(CMAKE_CXX_COMPILER "C:/Arduino/hardware/tools/avr/bin/avr-g++.exe")

#Compiler konfigurieren wie AVR Studio
SET(CSTANDARD "-std=gnu99")   
SET(CDEBUG "-gstabs")
SET(CWARN "-Wall -Wstrict-prototypes")
SET(COPT "-Os")

#Modell des Mikrocontrollers
SET(CMCU "-mmcu=atmega32")   #neu-richtig

#Takfrequenz mit welcher der Mikrocontroller arbeitet
SET(CDEFS "-DF_CPU=16000000L")  

#Compiler Optionen
SET(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${COPT} ${CWARN} ${CSTANDARD} ${CINCS} ${CEXTRA}") #${CTUNING}
SET(CXXFLAGS "${CMCU} ${CSTANDARD} ${CDEFS} ${COPT} ")  
SET(CMAKE_C_FLAGS  ${CFLAGS})
SET(CMAKE_CXX_FLAGS ${CXXFLAGS})

# Add current directory to CMake Module path automatically
#if(EXISTS  ${CMAKE_CURRENT_LIST_DIR}/Platform/Arduino.cmake)
#    set(CMAKE_MODULE_PATH  ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_LIST_DIR})
#endif()

#=============================================================================#
#                         System Paths                                        #
#=============================================================================#
if(UNIX)
    include(Platform/UnixPaths)
    if(APPLE)
        list(APPEND CMAKE_SYSTEM_PREFIX_PATH ~/Applications
                                             /Applications
                                             /Developer/Applications
                                             /sw        # Fink
                                             /opt/local) # MacPorts
    endif()
elseif(WIN32)
    include(Platform/WindowsPaths)
endif()


#=============================================================================#
#                         Detect Arduino SDK                                  #
#=============================================================================#
if(NOT ARDUINO_SDK_PATH)
    set(ARDUINO_PATHS)

    foreach(DETECT_VERSION_MAJOR 1)
        foreach(DETECT_VERSION_MINOR RANGE 5 0)
            list(APPEND ARDUINO_PATHS arduino-${DETECT_VERSION_MAJOR}.${DETECT_VERSION_MINOR})
            foreach(DETECT_VERSION_PATCH  RANGE 3 0)
                list(APPEND ARDUINO_PATHS arduino-${DETECT_VERSION_MAJOR}.${DETECT_VERSION_MINOR}.${DETECT_VERSION_PATCH})
            endforeach()
        endforeach()
    endforeach()

    foreach(VERSION RANGE 23 19)
        list(APPEND ARDUINO_PATHS arduino-00${VERSION})
    endforeach()

    if(UNIX)
        file(GLOB SDK_PATH_HINTS /usr/share/arduino*
            /opt/local/arduino*
            /opt/arduino*
            /usr/local/share/arduino*)
    elseif(WIN32)
        set(SDK_PATH_HINTS 
            "C:\\Arduino"
            )
    endif()
    list(SORT SDK_PATH_HINTS)
    list(REVERSE SDK_PATH_HINTS)
endif()

find_path(ARDUINO_SDK_PATH
          NAMES lib/version.txt
          PATH_SUFFIXES share/arduino
                        Arduino.app/Contents/Resources/Java/
                        ${ARDUINO_PATHS}
          HINTS ${SDK_PATH_HINTS}
          DOC "Arduino SDK path.")

if(ARDUINO_SDK_PATH)
    MESSAGE(STATUS "\n -------------------------------->SDK PATH:"  ${ARDUINO_SDK_PATH} )
    list(APPEND CMAKE_SYSTEM_PREFIX_PATH ${ARDUINO_SDK_PATH}/hardware/tools/avr)
    list(APPEND CMAKE_SYSTEM_PREFIX_PATH ${ARDUINO_SDK_PATH}/hardware/tools/avr/utils)
	list(APPEND CMAKE_SYSTEM_PREFIX_PATH ${ARDUINO_SDK_PATH}/hardware/arduino/cores/arduino)
	list(APPEND CMAKE_SYSTEM_PREFIX_PATH ${ARDUINO_SDK_PATH}/hardware/arduino/variants/standard)
	list(APPEND CMAKE_SYSTEM_PREFIX_PATH ${ARDUINO_SDK_PATH})
else()
    message(FATAL_ERROR "Could not find Arduino SDK (set ARDUINO_SDK_PATH)!")
endif()