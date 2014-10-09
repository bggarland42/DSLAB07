AutomatedMakefile = am
CC = g++

FILES = RecursiveIntegration.o RombergIntegration.o Problem22_1.o
EXECUTABLE = Lab07.exe

PROJECT_PATH = $(PROJECT_DIR)

INC_DIRS = -I$(PROJECT_PATH)/CSC2110/
LIB_DIRS = -L$(PROJECT_PATH)/CSC2110/
LIBS = -lCSC2110

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

all: Project

Project: 		$(FILES)
			$(LINK) $(EXECUTABLE) $(FILES) $(LIBS)

RecursiveIntegration.o:	RecursiveIntegration.h RecursiveIntegration.cpp
						$(COMPILE) RecursiveIntegration.cpp

RombergIntegration.o:		RombergIntegration.h RombergIntegration.cpp
						$(COMPILE) RombergIntegration.cpp

Problem22_1.o:			Problem22_1.h Problem22_1.cpp
						$(COMPILE) Problem22_1.cpp


