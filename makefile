SRC := src/
DIST := dist/
DOGUICLI := $(DIST)doguiCLI

doguiCLI : main.o build.o
	g++ -o $(DOGUICLI) $(DIST)main.o $(DIST)build.o

main.o: $(SRC)main.cc $(SRC)file/build.h 
	g++ -c -o $(DIST)main.o $(SRC)main.cc

build.o: $(SRC)file/build.cc
	g++ -c -o $(DIST)build.o $(SRC)file/build.cc

clean :
ifeq ($(OS),Windows_NT)
	cd dist && del *.o
	cd dist && del doguiCLI.exe
else
	rm *.o $(DOGUICLI)
endif

run :
	./$(DOGUICLI)
