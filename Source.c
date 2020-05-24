// Hovhannes Margaryan
// CS/IS 165 - 1234
// Project 1 Assembly Project #1

#include <stdio.h>

int Weight;

void c(int w) {

    if (0 < w && w <= 1)
	{
		printf("The shipping cost is $3.5");
	}
	else if (1 < w && w <= 3)
	{
		printf("The shipping cost is $5.5");
	}
	else if (3 < Weight && Weight <= 10)
	{
		printf("The shipping cost is $8.5");
	}
	else if (10 < Weight && Weight <= 20) 
	{
		printf("The shipping cost is $10.5");
	}
	else
	{
		printf("The package cannot be shipped.");
	}
}

int main() {
	printf("Please enter the weight of the package: ");
	scanf_s("%d", &Weight);
	c(Weight);
	return 0;
}