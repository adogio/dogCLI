#include "stdafx.h"
#include "main.h"

int main(int argc, char *argv[])
{
	std::string current_exec_name = argv[0];
	std::string first_arge;
	std::vector<std::string> all_args;
	for (int i = 0; i < argc; i++)
	{
		printf("num=%d ", i);
		printf("Arg=%s\n", argv[i]);
	}
	build *t = new build();
	dog *d = new dog();
	std::cout << d->add() << std::endl;
	delete t;
	delete d;
	return 0;
}
