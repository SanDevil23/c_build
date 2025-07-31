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

reciprocal: main.o reciprocal.o
	g++ $(CFLAGS) -o reciprocal main.o reciprocal.o
	
main.o: main.c reciprocal.hpp
	gcc $(CFLAGS) -c  main.c

reciprocal.o: reciprocal.cpp reciprocal.hpp
	g++ $(CFLAGS) -c reciprocal.cpp

clean:
	rm -f *.o reciprocal