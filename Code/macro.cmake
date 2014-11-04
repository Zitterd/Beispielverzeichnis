# create avr hex
MACRO(AVR_CREATE_HEX name)
ADD_CUSTOM_COMMAND(TARGET ${name} POST_BUILD COMMAND avr-objcopy ARGS -O ihex -R.eeprom ${name} "C:/Users/Jonas Hamers/Desktop/Beispielverzeichnis/Skript/test.hex")
MESSAGE(STATUS "\n ----------JONAS---------------------->Macro")
ENDMACRO(AVR_CREATE_HEX)

#  TARGET ${name}