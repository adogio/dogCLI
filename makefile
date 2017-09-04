SRC := src/
DIST := dist/

edit : main.o
	echo main.o

main.o : $(SRC)main.cc
	 gcc -c $(SRC)main.cc
	 echo 1

clean : 
	rm edit main.o