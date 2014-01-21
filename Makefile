#not finished yet

EXECUTABLE=bmi
COMPONENTS=bmi_interface.o calcbmi.o 

CC=gcc
CFLAGS= -O2 -Wall -Wextra -std=c99

all: $(EXECUTABLE)

$(EXECUTABLE): $(COMPONENTS)
		$(CC) $(COMPONENTS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -MMD -MP -o $@ -c $<

run: $(EXECUTABLE)
	./$(EXECUTABLE)

clean:
	rm -rf *.o
	rm -rf *.d
	rm -rf $(EXECUTABLE)
