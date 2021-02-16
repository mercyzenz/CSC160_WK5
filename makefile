CC=g++
CFLAGS=-I.
DEPS = csc160.h
OBJ = csc160.o hw5.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hw5: $(OBJ)
	$(CC) -o $@ csc160.o hw5.o $(CFLAGS)

all: hw5

clean:
	rm -f *.o hw5
