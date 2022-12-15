# To add a file, add the file name in the ''ofiles ='' line.
# The filename should be in the form .filename.o.
# Then create it's recipe.
# e.g.
#.foo.o: monty.h
#	gcc -c $(flags) foo.c -o .foo.o
# The object files are hidden so that the directory will be clean.
# To compile, you can just use `$ make`.
# Use `$ make clean` to remove all object files

OFILES = .monty.o .push.o .pall.o .functions.o .stack.o .swap.o\
	 .nop.o .calc.o
flags = -Wall -Werror -Wextra -pedantic -std=c89

monty: $(OFILES) monty.h
	gcc $(OFILES) -o monty

# all recipes goes here.

.monty.o: monty.c monty.h
	gcc -c $(flags) monty.c -o .monty.o

.push.o: push.c monty.h
	gcc -c $(flags) push.c -o .push.o

.pall.o: pall.c monty.h
	gcc -c $(flags) pall.c -o .pall.o

.functions.o: functions.c monty.h
	gcc -c $(flags) functions.c -o .functions.o

.stack.o: stack.c monty.h
	gcc -c $(flags) stack.c -o .stack.o

.swap.o: swap.c monty.h
	gcc -c $(flags) swap.c -o .swap.o

.nop.o: nop.c monty.h
	gcc -c $(flags) nop.c -o .nop.o

.calc.o: calc.c monty.h
	gcc -c $(flags) calc.c -o .calc.o

clean:
	rm -rf *.o
