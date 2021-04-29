#!/bin/bash
function run(){
if [[ $1 =~ ^.*?\.asm$ ]];
then
        f="$1"
else
        f="$1.asm"
fi

nasm -f elf64 -o a.o "$f"

ld -o a.out a.o

rm a.o

chmod +x a.out

./a.out
}
