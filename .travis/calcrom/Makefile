CXX := g++
CXXFLAGS := -O3 -std=c++11

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

TARGET := calcrom$(EXE)

.PHONY: all

all: $(TARGET)

clean:
	rm -f calcrom calcrom.exe

$(TARGET): calcrom.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^
