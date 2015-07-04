#include <stdio.h>

extern int derefint();

int main(){
	int i = 10;
	int* address = &i;
	printf("%d\n", derefint(address));
}