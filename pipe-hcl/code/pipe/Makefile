CC=gcc
CFLAGS=-Wall 

MISCDIR=../misc
HCL2C=$(MISCDIR)/hcl2c 
LIBS=-L/usr/lib -lm -I$(MISCDIR)
YAS=../misc/yas

pipe: psim.c sim.h pipe.hcl $(MISCDIR)/isa.c $(MISCDIR)/isa.h
	$(HCL2C) -n pipe.hcl < pipe.hcl > pipe.c
	$(CC) $(CFLAGS) $(INC) -o pipe psim.c pipe.c $(MISCDIR)/isa.c $(LIBS)

clean:
	rm -f pipe.c pipe

