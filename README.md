# 0x19. C - Stacks, Queues - LIFO, FIFO

## Authors - [Samuel Archibong](https://github.com/sammiearchie77) and [Sarah Gathoni](https://github.com/sarahGathoni)

## The Monty language

Monty 0.98 is a scripting language that is first compiled into Monty byte codes (Just like Python). It relies on a unique stack, with specific instructions to manipulate it. The goal of this project is to create an interpreter for Monty ByteCodes files.

## Description

This ALX School project is a custom ByteCode interpreter, coded in C.
Compilation:
```gcc -Wall -Werror -Wextra -pedantic *.c -o monty```
Usage:
```./monty byte_file.m```
The program reads from the file "byte_file.m" that contains one instruction per line.
It then calls the right function to modify a stack according to the instruction.
It prints custom error messages if the instruction is wrong.
