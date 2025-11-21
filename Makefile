# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g

# Targets
all: process_creation output_program simple_program

# Exercise 1: Fork example
process_creation: process_creation.c
	$(CC) $(CFLAGS) process_creation.c -o process_creation

# Exercise 5: Multi-file linking
output_program: file1.c file2.c
	$(CC) $(CFLAGS) file1.c file2.c -o output_program

# Exercise 6: Simple program for loader demonstration
simple_program: simple_program.c
	$(CC) $(CFLAGS) simple_program.c -o simple_program

# Clean up compiled files
clean:
	rm -f process_creation output_program simple_program

# Run all programs
run: all
	@echo "Running process_creation:"
	./process_creation
	@echo "\nRunning output_program:"
	./output_program
	@echo "\nRunning simple_program:"
	./simple_program
	@echo "\nShowing dynamic libraries for simple_program:"
	ldd simple_program

.PHONY: all clean run
