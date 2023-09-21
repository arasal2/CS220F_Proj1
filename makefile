all: omaha_poker

omaha_poker: omaha_poker.o
	gcc omaha_poker.o libpoker_ref.a -o omaha_poker

omaha_poker.o: omaha_poker.c omaha_poker.h
	gcc -c omaha_poker.c
	
clean:
	rm -f *.o