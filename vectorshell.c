#include <stdio.h>

extern int dotproduct(int*, int*, int);

int main(){
	int firstvec []= {1, 1, 1};
	int secondvec []= {1, 1, 2};
	int dimention = 3;
	printf("%d\n", dotproduct(&firstvec[0], &secondvec[0], 3));
}