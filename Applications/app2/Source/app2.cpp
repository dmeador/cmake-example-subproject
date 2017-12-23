#include "stdio.h"
#include "comp2.h"
#include "comp3.h"

int main()
{
	printf( "app2 hello!\n");
	comp2();
	printf("component3 (header/interface) %d\n", COMPONENT3);
	printf("component3 message %s\n", C3MESSAGE);
}
