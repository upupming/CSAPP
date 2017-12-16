
CC = gcc

all:
	$(CC) -o Og-test -Og test.c 
	$(CC) -o Og-g-test -Og -g test.c

clean:
	rm Og* diff*

da:
	 objdump -d Og-test > diff1
	 objdump -d Og-g-test > diff2
	 diff diff1 diff2;[ $$? -eq 1 ]
