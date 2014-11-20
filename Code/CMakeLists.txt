cmake_minimum_required (VERSION 2.6.0)
set(_ECLIPSE_VERSION "8.5.0" )



set(CMAKE_SYSTEM_NAME Arduino)
set(CMAKE_ARDUINO_PATH "C:/Program Files (x86)/Arduino")
set(ARDUINO_SDK_PATH "C:/Program Files (x86)/Arduino")

set(CMAKE_C_COMPILER   "C:/Program Files (x86)/Arduino/hardware/tools/avr/bin/avr-gcc.exe")
set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/Arduino/hardware/tools/avr/bin/avr-g++.exe")

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




#LINK_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/avr5")
INCLUDE_DIRECTORIES("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code")




project (Code)

LINK_DIRECTORIES("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code")
INCLUDE_DIRECTORIES("C:/Program Files (x86)/Arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/avr5")

INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/Toolchain-avr-gcc.cmake")
INCLUDE("C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code/macro.cmake")

MESSAGE(STATUS "\n ----------JONAS---------------------->Creating Test-Projekt...")

set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_C_OUTPUT_EXTENSION ".o")

#ENABLE_LANGUAGE(ASM)

add_executable(test.o test2.c)


#TARGET_LINK_LIBRARIES(test.o uart.c)

AVR_CREATE_HEX(test.o)















#%SystemRoot%\system32;
#%SystemRoot%;
#%SystemRoot%\System32\Wbem;
#%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;
#c:\Program Files\Intel\DMIX;
#C:\Program Files (x86)\Intel\Services\IPT\;
#C:\Program Files\TortoiseSVN\bin;
#C:\Program Files (x86)\CodeMeter\DevKit\bin\;
#C:\Users\Jonas Hamers\Desktop\seneos_Pro_Dok\Programme\apache-maven-3.1.1\bin;
#C:\Program Files\Java\jdk1.7.0_07\bin;C:\Program Files (x86)\Git\bin;
#C:\Program Files (x86)\CMake 2.8\bin;
#c:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;
#c:\Program Files\Microsoft SQL Server\100\Tools\Binn\;
#c:\Program Files\Microsoft SQL Server\100\DTS\Binn\;
#C:\Program Files (x86)\GnuWin32\bin;C:\TDM-GCC-64\bin;
#C:\msys\1.0\bin;C:\MinGW\msys\1.0\bin;
#C:\MinGW\mingw32\bin;
#C:\Program Files (x86)\CMake\bin;

#C:\Program Files (x86)\Arduino\hardware\tools\avr\utils\bin;
#%ARDUINO_HOME%\hardware\arduino\cores\arduino;
#C:\Program Files (x86)\Arduino\hardware\tools\avr\bin;


#C:\WinAVR-20100110\bin;
#C:\WinAVR-20100110\utils\bin;















#%SystemRoot%\system32;
#%SystemRoot%;
#%SystemRoot%\System32\Wbem;
#%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;
#c:\Program Files\Intel\DMIX;
#C:\Program Files (x86)\Intel\Services\IPT\;
#C:\Program Files\TortoiseSVN\bin;
#C:\Program Files (x86)\CodeMeter\DevKit\bin\;
#C:\Users\Jonas Hamers\Desktop\seneos_Pro_Dok\Programme\apache-maven-3.1.1\bin;
#C:\Program Files\Java\jdk1.7.0_07\bin;C:\Program Files (x86)\Git\bin;
#C:\Program Files (x86)\CMake 2.8\bin;
#c:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;
#c:\Program Files\Microsoft SQL Server\100\Tools\Binn\;
#c:\Program Files\Microsoft SQL Server\100\DTS\Binn\;
#C:\Program Files (x86)\GnuWin32\bin;C:\TDM-GCC-64\bin;
#C:\msys\1.0\bin;C:\MinGW\msys\1.0\bin;
#C:\MinGW\mingw32\bin;
#C:\Program Files (x86)\CMake\bin;

#C:\Program Files (x86)\Arduino\hardware\tools\avr\utils\bin;
#%ARDUINO_HOME%\hardware\arduino\avr\cores\arduino;
#C:\Program Files (x86)\Arduino\hardware\tools\avr\bin;

#C:\WinAVR-20100110\bin;
#C:\WinAVR-20100110\utils\bin;