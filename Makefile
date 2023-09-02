TARGET 		= main
WIN_COMP	= x86_64-w64-mingw32-g++.exe
LIN_COMP	= x86_64-w64-mingw32-g++-win32

default: build run

build:
ifeq ($(SystemDrive),C:)
	$(WIN_COMP) -mwindows -o $(TARGET).exe src/$(TARGET).cpp
else
	$(LIN_COMP) -mwindows -o $(TARGET).exe src/$(TARGET).cpp
endif

run:
	./$(TARGET).exe

clean:
	rm -rf $(TARGET).exe
