.PHONY : clean uninstall

PREFIX ?= $(DESTDIR)/usr
BINDIR ?= $(PREFIX)/bin

RWMEM_src = rwmem.c
RWMEM_bin = rwmem
RWMEM_tgt = $(BINDIR)/$(RWMEM_bin)

all : $(RWMEM_bin)

$(RWMEM_bin) : $(RWMEM_src)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $^ $(LDLIBS) -lm -o $@

$(RWMEM_tgt) : $(RWMEM_bin)
	install -d $(BINDIR)
	install -m 0755 $^ $@

clean :
	rm $(RWMEM_bin)

install : $(RWMEM_tgt)

uninstall :
	rm $(BINDIR)/$(RWMEM_TGT)
