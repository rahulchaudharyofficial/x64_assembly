alive: alive.o
	gcc -o alive alive.o
alive.o: alive.asm
	nasm -f elf64 -Xvc -F dwarf alive.asm -l alive.lst
clean:
	rm alive *.o

