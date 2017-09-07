SRC := src/
DIST := dist/
SN := $(shell uname)
DOGCLI := $(DIST)$(SN)-dogCLI
GPP := g++ -c -o

dogCLI : main.o build.o dog.o args.o
	g++ -o $(DOGCLI) $(DIST)main.o $(DIST)build.o $(DIST)dog.o $(DIST)args.o
	make co

main.o: $(SRC)main.cc $(SRC)file/build.h 
	$(GPP) $(DIST)main.o $(SRC)main.cc

build.o: $(SRC)file/build.cc
	$(GPP) $(DIST)build.o $(SRC)file/build.cc

dog.o: $(SRC)dog/dog.cc
	$(GPP) $(DIST)dog.o $(SRC)dog/dog.cc

args.o: $(SRC)dog/args.cc
	$(GPP) $(DIST)args.o $(SRC)dog/args.cc
co :
ifeq ($(OS),Windows_NT)
	cd dist && del *.o
else
	rm $(DIST)*.o
endif

clean :
ifeq ($(OS),Windows_NT)
	cd dist && del *.o
	cd dist && del dogCLI.exe
else
	rm $(DIST)*.o $(DOGCLI)
endif

run :
	./$(DOGCLI)

gyp :
	node-gyp configure
	node-gyp build

os :
	echo $(shell uname)