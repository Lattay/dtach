CC = gcc
CFLAGS = -g -O2 -W -Wall -I.
LDFLAGS = 
LIBS = -lutil 
VERSION = 0.9

OBJ = attach.o master.o main.o
SRC = attach.c master.c main.c

TARFILES = README COPYING Makefile.in \
	   config.h.in $(SRC) \
	   dtach.h dtach.spec configure \
	   configure.ac dtach.1

dtach: $(OBJ)
	$(CC) -o $@ $(LDFLAGS) $(OBJ) $(LIBS)

clean:
	rm -f dtach $(OBJ) dtach-$(VERSION).tar.gz

tar:
	mkdir dtach-$(VERSION)
	cp $(TARFILES) dtach-$(VERSION)
	tar -cf dtach-$(VERSION).tar dtach-$(VERSION)/
	gzip -9f dtach-$(VERSION).tar
	rm -rf dtach-$(VERSION)

attach.o: ./attach.c ./dtach.h config.h
master.o: ./master.c ./dtach.h config.h
main.o: ./main.c ./dtach.h config.h
