all: flufflepuff

lex.yy.c: flufflepuff.l
	flex flufflepuff.l

flufflepuff: lex.yy.c
	g++ lex.yy.c -Wno-write-strings -o flufflepuff

clean:
	rm lex.yy.c flufflepuff
