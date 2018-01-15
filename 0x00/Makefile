all: nasm32 nasm64

nasm64:
	nasm -f elf64 hello64.asm 
	ld -m elf_x86_64 hello64.o -o hello64

nasm32:
	nasm -f elf32 hello32.asm 
	ld -m elf_i386 hello32.o -o hello32

clean:
	rm -f *.o hello32 hello64