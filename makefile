SRC := src/
DIST := dist/
DOGCLI := $(DIST)dogCLI

dogCLI : main.o build.o
	g++ -o $(DOGCLI) $(DIST)main.o $(DIST)build.o

main.o: $(SRC)main.cc $(SRC)file/build.h 
	g++ -c -o $(DIST)main.o $(SRC)main.cc

build.o: $(SRC)file/build.cc
	g++ -c -o $(DIST)build.o $(SRC)file/build.cc

clean :
ifeq ($(OS),Windows_NT)
	cd dist && del $(DIST)*.o
	cd dist && del doguiCLI.exe
else
	rm $(DIST)*.o $(DOGCLI)
endif

run :
	./$(DOGCLI)

gyp :
	node-gyp configure
	node-gyp build