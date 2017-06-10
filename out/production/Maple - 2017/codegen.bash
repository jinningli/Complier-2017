# this script is called when the judge wants our compiler to compile a source file.
# print the compiled source, i.e. asm code, directly to stdout.
# don't print anything other to stdout.
# if you would like to print some debug information, please go to stderr.

set -e
cd "$(dirname "$0")"
#cat > program.txt   # save everything in stdin to program.txt
g++ -o objconv -O2 conv/*.cpp
java -cp ./cn/chips/MAPLE/lib/*:./bin cn.chips.MAPLE.compiler.Main
