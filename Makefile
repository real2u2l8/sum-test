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
# 디펜던시 파일들이 수정됬는지 어떻게 아는가?
# 수정시간을 확인한다.
# 수정시간이 최근으로 바뀌면 다시 빌드한다.
# 수정시간이 최근으로 바뀌지 않으면 빌드하지 않는다.