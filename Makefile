# =============================================================================
# Makefile for Building C and C++ Projects
#
# This Makefile supports the compilation and linking of C and C++ source files.
# It includes targets for building executables, cleaning build artifacts, and
# handling dependencies.
#
# Supported Targets:
#   - all       : Build all targets
#   - clean     : Remove build artifacts
#   - run       : Run the built executable (if applicable)
#   - debug     : Build with debug symbols
#   - release   : Build with optimizations
#
# Customize compiler settings and source file locations as needed.
# =============================================================================

CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17
CC=gcc

SRC = ./pkg/c
TEST_SRC = tests/test_main.cpp
INCLUDES = -Iinclude

all: reciprocal

# test not working currently, dev changes are in progress
tests:
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o tests/test_binary $(TEST_SRC)

reciprocal: $(SRC)/main.o $(SRC)/reciprocal.o
	g++ $(CFLAGS) -o $(SRC)/reciprocal $(SRC)/main.o $(SRC)/reciprocal.o
	
main.o: $(SRC)/main.c $(SRC)/reciprocal.hpp
	gcc $(CFLAGS) -c $(SRC)/main.c

reciprocal.o: $(SRC)/reciprocal.cpp $(SRC)/reciprocal.hpp
	g++ $(CFLAGS) -c $(SRC)/reciprocal.cpp

clean:
	rm -f $(SRC)/*.o $(SRC)/reciprocal.exe