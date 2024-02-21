UNAME := $(shell uname)
CFLAGS      += -O2 -Wall
archive = ext/bsdiff.a
O = ext/bsdifflib.o ext/bspatchlib.o

.PHONY: all
all: $(O)
ifeq ($(UNAME), Linux)
	ar rcs $(archive) $(O)
endif

$(O): %o : %c
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	rm -f $(O) $(archive)
