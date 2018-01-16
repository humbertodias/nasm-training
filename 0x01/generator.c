#include <stdio.h>
#include <stdlib.h>
#include <math.h>

const char ops[] = {'+', '-', 'x', '/', '%'};

int random_int(int min, int max)
{
	return min + rand() % (max + 1 - min);
}

char get_random_operator() {
	return ops[random_int(0, 4)];
}

int main(int argc, char * argv[]) {
	if (argc < 2) { printf("Usage generator COUNT_LINES\n"); exit(1); }
	int max = atol(argv[1]);
	for (int i = 0; i < max; i++) {
		printf( "%d %c %d\n" , random_int(1, max), get_random_operator(), random_int(1, max) );
	}
	return 0;
}