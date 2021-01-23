#makefile for main.asm
main: main.o main1.o
	gcc -o main main.o --no-pie
	gcc -o main1 main1.o --no-pie

main.o: main.asm
	nasm -f elf64 -g -F dwarf main.asm -l main.lst
	
main1.o: main1.asm
	nasm -f elf64 -g -F dwarf main1.asm -l main1.lst

clean:
	rm *.o main main1
