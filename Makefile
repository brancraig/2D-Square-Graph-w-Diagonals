# Make file for the 2D-Square-Gridgraph-w-Diagonals

CC=g++
CFLAGS=-c -Wall
DEBUGC=-g -Wall -o testexec
OUTPUTFILE=gridexec


all: gridgraph

gridgraph: gridgraph.o gridmain.o
	$(CC) gridgraph.o gridmain.o -o $(OUTPUTFILE)

gridgraph.o: gridgraph.cpp
	$(CC) $(CFLAGS) gridgraph.cpp

gridmain.o: gridmain.cpp
	$(CC) $(CFLAGS) gridmain.cpp

clean:
	rm *.o $(OUTPUTFILE)



