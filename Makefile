# Make file for the 2D-Square-Gridgraph-w-Diagonals

CC=g++
CFLAGS=-c -Wall
DEBUGFLAGS=-g -Wall
TESTOUTPUT=testexec.out
RUNGDB=gdb $(TESTOUPUT)
OUTPUTFILE=gridexec.out


all: gridgraph

debug:  gridgraph.o gridmain.o
	$(CC) $(DEBUGFLAGS) gridgraph.o gridmain.o -o $(TESTOUTPUT)
	$(RUNGDB) $(TESTOUTPUT)	

gridgraph: gridgraph.o gridmain.o
	$(CC) gridgraph.o gridmain.o -o $(OUTPUTFILE)

gridgraph.o: gridgraph.cpp
	$(CC) $(CFLAGS) gridgraph.cpp

gridmain.o: gridmain.cpp
	$(CC) $(CFLAGS) gridmain.cpp

clean:
	rm *.o *.out




