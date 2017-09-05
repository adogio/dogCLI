#include "dog.h"
#include "args.h"

int dog::add()
{
    args *i = new args();
    int k = i->add();
    return k;
}