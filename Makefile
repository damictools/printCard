CFITSIO = $(FITSIOROOT)
CPP = g++
CC = gcc
CFLAGS = -Wall -I$(CFITSIO)
LIBS = -L$(CFITSIO) -lcfitsio -lm
GLIBS = 
GLIBS += 
OBJECTS = printCard.o 
HEADERS = 

ALL : printCard.exe
	echo "Listo!"

printCard.exe : $(OBJECTS)
	$(CPP) $(OBJECTS) -o printCard.exe $(LIBS) $(GLIBS) $(CFLAGS)

printCard.o : printCard.cc $(HEADERS)
	$(CPP) -c printCard.cc -o printCard.o $(CFLAGS)

clean:
	rm -f *~ *.o *.exe
