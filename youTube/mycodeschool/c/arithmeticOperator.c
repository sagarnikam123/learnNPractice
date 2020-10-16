// Using Arithmetic Operator
#include<stdio.h>

int main()
{
	float a, b, sum, diff, product, division;
	printf("Enter a:");
	scanf("%f", &a);
	printf("Enter b:");
	scanf("%f", &b);

	sum = a + b;
	printf("a + b = %.2f\n", sum);

	diff = a - b;
	printf("a - b = %.2f\n", diff);

	product = a * b;
	printf("a * b = %.2f\n", product);

	division = a/b;
	printf("a / b = %.2f\n", division);

	return 0;
}
