# CMake generated Testfile for 
# Source directory: C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Code
# Build directory: C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(sampleTest "runUnitTests")
subdirs(lib/gtest-1.6.0)
