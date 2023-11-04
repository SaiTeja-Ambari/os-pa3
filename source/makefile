HEADERS=../headers
#SOURCE=./source
LDLIBS=-lpthread
CXX=g++
CXXFLAGS=-Wall -std=c++11 -I$(HEADERS) 
BIN=./bin
VPATH=$(SOURCE)
TARGET=schedsim

all: $(TARGET) install
	./$(TARGET)

schedsim: Clock.o CPU.o main.o PCBGenerator.o Schedulers.o StatUpdater.o 

clean:
	rm -f *.o 
    
install:    
	mv schedsim $(BIN)
    

