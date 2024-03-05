CFLAGS=-g -Wall
# CFLAGS+=-DDEBUGLOG

PREFIX=/usr/local
INSTALL_PATH=$(PREFIX)/lib/lua/5.1
LUAINC?=-I/usr/local/include/luajit-2.1
SHARED=--shared -fPIC
LIBS=-lluajit-5.1

all:lseri.so

lseri.so: src/lua-seri-lib.c src/lua-seri.c
	$(CC) $(CFLAGS) $(SHARED) $(LUAINC) -o $@ $^ $(LIBS) -Isrc

install:
	cp lseri.so $(INSTALL_PATH)