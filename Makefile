# Make xwininfo
CPPFLAGS=-DHAVE_WCHAR_H -DHAVE_WCTYPE_H
LIBS=-lX11 -lXext -lXau -lXdmcp -lXaw -lXmu -lXt

default: xwininfo

clean:
	rm -f *.o $(BINS) $(MAN)

xwininfo:
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@ $@.c dsimple.c clientwin.c $(LIBS)
