SOURCE=./source
LDLIBS=-lpthread
CXX=g++
CXXFLAGS=-Wall -std=c++11  
BIN=./bin
VPATH=$(SOURCE)
TARGET=schedsim
OBJS=Clock.o CPU.o main.o PCBGenerator.o Schedulers.o StatUpdater.o

all: $(TARGET) install

schedsim: $(OBJS)
	$(CXX) $(LDLIBS) $(OBJS) -o $(TARGET)

clean:
	rm -f $(OBJS) 
	rm -f $(BIN)/$(TARGET)
    
install:    
	mv schedsim $(BIN)
    

