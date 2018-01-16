#include <stdio.h>
#include <stdlib.h>

int sum(int n1,int n2)      { return n1+n2; }
int subtract(int n1,int n2) { return n1-n2; }
int multiply(int n1,int n2) { return n1*n2; }
int division(int n1,int n2) { return n1/n2; }
int divmod(int n1,int n2)   { return n1%n2; }

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
