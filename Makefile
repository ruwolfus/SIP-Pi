PJBASE=../pjproject

include $(PJBASE)/build.mak

CC      = $(PJ_CC)
LDFLAGS = $(PJ_LDFLAGS)
LDLIBS  = $(PJ_LDLIBS)
CFLAGS  = $(PJ_CFLAGS)
CPPFLAGS= ${CFLAGS}

all: sipcall sipserv

sipcall: sipcall.c
	$(CC) -o $@ $< $(CPPFLAGS) $(LDFLAGS) $(LDLIBS)

sipserv: sipserv.c
	$(CC) -o $@ $< $(CPPFLAGS) $(LDFLAGS) $(LDLIBS)
	
clean:
	rm -rf sipcall
	rm -rf sipserv

