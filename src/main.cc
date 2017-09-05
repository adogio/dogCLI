#include "stdafx.h"

int main()
{
	build *t = new build();
	printf("printf: Hello World\n%d", t->add());
	delete t;
	return 0;
}
