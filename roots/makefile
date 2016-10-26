main : main.o
	gcc -L/data/data/com.termux/files/usr/lib -o main main.o -lgsl -lgslcblas -lm
main.o : main.c
	gcc -Wall -I/data/data/com.termux/files/usr/include/ -c main.c
clean :
	rm *.o main
