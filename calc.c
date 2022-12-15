#include "monty.h"
#include <stdlib.h>
#include <unistd.h>

/**
 * add - add the top two element on the stack
 * @stack: stack
 * @line_number: line number to use while printing error
 */

void add(stack_t **stack, unsigned int line_number)
{
	int count, sum;
	stack_t *tail;

	count = stackCount(stack);
	if (count < 2) /* stack too short */
	{
		dprintf(STDERR_FILENO, "L%u: can't add, stack too short\n", line_number);
		stackFree(stack);
		exit(EXIT_FAILURE);
	}

	/* add the last two elements */
	tail = getTail(stack);
	sum = tail->n;
	tail->prev->n += sum; /* store sum in previous node */
	stackPop(stack); /* remove last node */
}
