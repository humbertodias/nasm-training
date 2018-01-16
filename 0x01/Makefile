CFLAGS=-O0 -g -Wall

lin32:
	nasm -f elf32 bytes.asm
	gcc $(CFLAGS) -m32 bytes.o -o bytes

	nasm -f elf32 cmp.asm
	gcc $(CFLAGS) -m32 cmp.o -o cmp

	nasm -f elf32 localvar.asm
	gcc $(CFLAGS) -m32 localvar.o -o localvar

	nasm -f elf32 args.asm
	gcc $(CFLAGS) -m32 args.o -o args

clean:
	rm -rf *.o cmp bytes cmp localvar args
