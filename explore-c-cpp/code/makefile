CC=g++


all: func.c int-uint.c makefile c.cpp int-long.c reference.c int-float.c loop.c      
	
	$(CC) -S *.c

O3: func.c int-uint.c makefile c.cpp int-long.c reference.c int-float.c loop.c      
	$(CC) -S -O3 *.c

clean:
	rm *.s
