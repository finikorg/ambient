LDFLAGS = -lcap-ng

SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

set_ambient: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(OBJ) set_caps
