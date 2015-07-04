#include <stdio.h>

extern int search(int*, int, int);

int main(){
	int firstvec []= {1, 2, 6, 8, 3, 9};
	int length = 6;
	printf("%d\n", search(&firstvec[0], length, 8)); // search for number
}