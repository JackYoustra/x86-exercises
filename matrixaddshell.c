#include <stdio.h>
	#define firstdimention 2
	#define seconddimention 2

extern void matrixadd(int*, int*, int*, int, int);

int main(){

	int firstmatrix [firstdimention][seconddimention] = {{1, 1},
							{2, 2}};
	int secondmatrix [firstdimention][seconddimention] = {{3, 4},
							{8, 9}};

	int destination [firstdimention][seconddimention];
	printf("\n");
	matrixadd(&firstmatrix[0][0], &secondmatrix[0][0], &destination[0][0], firstdimention, seconddimention);
	for(int i = 0; i < firstdimention; i++){
		for(int j = 0; j < seconddimention; j++){
			printf("%d   ", destination[i][j]);
		}
		printf("\n");
	}
}