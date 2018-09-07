ifeq ($(PREFIX),)
    PREFIX := /usr/local/bin
endif

all : winner-flash

flash : winner-flash.c
	gcc winner-flash.c -o winner-flash
clean :
	rm winner-flash

install: winner-flash
	install -m 655 winner-flash $(PREFIX)