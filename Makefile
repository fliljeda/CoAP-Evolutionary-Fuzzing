CC=g++
FLAGS=-std=c++17 -Wall -lstdc++fs
SRCS=main.cpp network_handler.cpp packet_handler.cpp coap_mutations.cpp fuzzer.cpp evo_handler.cpp evo_handler.cpp

all: main.o

main.o: $(SRCS)
	$(CC) main.cpp -o main.o $(FLAGS) 

silent: main.cpp
	@$(CC) main.cpp -o main.o $(FLAGS) 

runcov: main.o
	@./main.o "cov.o"

run: main.o
	@./main.o $(MYARGS)
