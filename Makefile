#Makefile
all: sum-test

sum-test: main.o sum.o #sum-test를 만들기 위해 main.om sum.o가 필요하다. 오른쪽은 타겟, 왼쪽은 디펜던시
	g++ -o sum-test main.o sum.o

main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

clean: #필요없는 파일을 지우는 명령어 
	rm -f sum-test
	rm -f *.o
