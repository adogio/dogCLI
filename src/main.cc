#include "stdafx.h"

int main()
{
	build *t = new build();
	printf("printf: Hello World%d\n", t->add());
	delete t;
	return 0;
}
