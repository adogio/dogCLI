SRC := src/
DIST := dist/

edit : Test

Test : $(SRC)main.cc
	 gcc -o $(DIST)Test $(SRC)main.cc -Wall -Werror

clean : 
	rm *.o $(DIST)Test

run :
	./$(DIST)Test