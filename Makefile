
CC=g++
FLAGS=-O3 -std=c++11

SRC= $(wildcard *.cpp)
OBJ= $(SRC:.cpp=.o)

all: componentsearch

cs2: $(OBJ)
	$(CC) -o $@ $^ $(FLAGS)

%.o: %.cpp
	$(CC) $(FLAGS) -o $@ -c $<

clean:
	rm -rf *.o
	rm -rf componentsearch
