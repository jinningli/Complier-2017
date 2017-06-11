nasm -felf64 chips.asm
gcc chips.o -o chips
echo 9987 | gdb ./chips -ex r >&2
