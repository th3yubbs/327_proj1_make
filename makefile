FLAG := -Wall

myexe: main.o myfunc.o
	g++ $(FLAG) -o myexe main.o myfunc.o

main.o: main.cpp myfunc.h
	g++ $(FLAG) -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	g++ $(FLAG) -c myfunc.cpp

make clean:
	rm -f *.o myexe

