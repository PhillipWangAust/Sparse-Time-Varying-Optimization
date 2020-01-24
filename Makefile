CC=g++ 
CFLAGS= -w -Wall -I ./eigen/ -std=c++11
all:
	$(CC) $(CFLAGS) CSI_TV_v3.1_2020.cpp  -o dynreg

.PHONY: opt
opt:override CFLAGS += -O2
opt:all

.PHONY: prof
prof:override CFLAGS += -p
prof:all

.PHONY: clean
clean:
	rm csigo
