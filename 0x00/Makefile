lin32:
	nasm -f elf32 hello32.asm 
	ld -m elf_i386 hello32.o -o hello32

lin64:
	nasm -f elf64 hello64.asm 
	ld -m elf_x86_64 hello64.o -o hello64

mac32:
	nasm -f macho32 hello32mac.asm 
	ld -e _start -macosx_version_min 10.13.2 -lSystem hello32mac.o -o hello32

mac64:
	nasm -f macho64 hello64mac.asm 
	ld -e _start -macosx_version_min 10.13.2 -lSystem hello64mac.o -o hello64

win32:
	nasm -f win32 hello32win.asm -o hello32.exe
#	ld -m i386pe hello32.o -o hello32.exe

clean:
	rm -f *.o hello32 hello64