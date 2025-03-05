#include "sum.h"

int sum(int n){
	int res =0;
/*	for (int i = 1; i <= n; i++){ //시간복잡도 O(n)에서 O(1)로 바꿀 수 있음
		res += i;
	}
*/	
	res = n * (n + 1) / 2; //시간복잡도 O(1)
	return res;
}
