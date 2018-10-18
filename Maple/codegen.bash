# this script is called when the judge wants our compiler to compile a source file.
# print the compiled source, i.e. asm code, directly to stdout.
# don't print anything other to stdout.
# if you would like to print some debug information, please go to stderr.

set -e
cd "$(dirname "$0")"
java -cp ./src/cn/chips/MAPLE/lib/*:./bin cn.chips.MAPLE.compiler.Main
#bash c2nasm.bash output.c -O0  2> err.txt 1> std.txt
#cat chips.asm
#java -cp ./cn/chips/MAPLE/lib/*:./bin cn.chips.MAPLE.compiler.Main --add-global
