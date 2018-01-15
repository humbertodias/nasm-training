#include <stdio.h>
#include <stdlib.h>

extern int sum(int,int);
extern int subtract(int,int);
extern int multiply(int,int);
extern int division(int,int);
extern int divmod(int,int);

int main(int argc, char ** argv)
{	
   int n1, n2, ret;
   char op;
   while (scanf("%d %c %d", &n1, &op, &n2)==3){
     switch(op){
       case '+': ret = sum(n1,n2); break;
       case '-': ret = subtract(n1,n2); break;
       case 'x': ret = multiply(n1,n2); break;
       case '/': ret = division(n1,n2); break;
       case '%': ret = divmod(n1,n2); break;
       default: {printf("Invalid operator [%c]! Should be +, -, x,  / or %%\n", op); exit(2); }
     }
     printf("%d %c %d = %d\n",n1,op,n2, ret);
    }
   return 0;
}
