UNAME := $(shell uname)
CFLAGS      += -O2 -Wall
archive = ext/bsdiff.a
O = ext/bsdifflib.o ext/bspatchlib.o

all: $(archive) # [default]

$(archive): $(O)
	ar rcs $(archive) $(O)

$(O): %o : %c
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	rm -f $(O) $(archive)
