all : sum-test

sum-test : sum.o main.o
		g++ -o sum-test sum.0 main.0

main.o : sum.h main.cpp

sum.o : sum.h sum.cpp

clean:
		rm -f sum-test
		rm -f *.o
