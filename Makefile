DEBUG = -g
INCDIR = /usr/include/
LIBDIR = /usr/lib/
FLAGS = -lXm -lXt -lSM -lICE -lX11

gXipmsg : main.o udp.o pack.o appIcon.o sendDialog.o recvDialog.o
	cc -I $(INCDIR) $(DEBUG) -o gXipmsg main.o udp.o pack.o appIcon.o sendDialog.o recvDialog.o -L $(LIBDIR) $(FLAGS)

main.o : main.c main.h gXipmsg.h
	cc -I $(INCDIR) $(DEBUG) -c main.c

udp.o : udp.c udp.h 
	cc -I $(INCDIR) $(DEBUG) -c udp.c	

pack.o : pack.c pack.h 
	cc -I $(INCDIR) $(DEBUG) -c pack.c	

appIcon.o : appIcon.c appIcon.h 
	cc -I $(INCDIR) $(DEBUG) -c appIcon.c

sendDialog.o : sendDialog.c sendDialog.h 
	cc -I $(INCDIR) $(DEBUG) -c sendDialog.c

recvDialog.o : recvDialog.c recvDialog.h 
	cc -I $(INCDIR) $(DEBUG) -c recvDialog.c

clean : 
	rm -f gXipmsg *.s *.o *.exe *.stackdump

