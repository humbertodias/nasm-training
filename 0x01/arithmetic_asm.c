#include <stdio.h>
#include <stdlib.h>

extern int _sum(int, int);
extern int _subtract(int, int);
extern int _multiply(int, int);
extern int _division(int, int);
extern int _divmod(int, int);

int main(int argc, char ** argv)
{
  int n1, n2, ret;
  char op;
  while (scanf("%d %c %d", &n1, &op, &n2) == 3) {
    switch (op) {
    case '+': ret = _sum(n1, n2);      break;
    case '-': ret = _subtract(n1, n2); break;
    case 'x': ret = _multiply(n1, n2); break;
    case '/': ret = _division(n1, n2); break;
    case '%': ret = _divmod(n1, n2);   break;
    default: {printf("Invalid operator [%c]! Should be +, -, x,  / or %%\n", op); exit(2); }
    }
    printf("%d %c %d = %d\n", n1, op, n2, ret);
  }
  return 0;
}
