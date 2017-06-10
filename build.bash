# this script is called when the judge is building your compiler.
# no argument will be passed in.

set -e
cd "$(dirname "$0")"
mkdir -p bin
find ./src/cn/chips/MAPLE -name *.java | javac -d bin -cp "./src/cn/chips/MAPLE/lib/*" @/dev/stdin
g++ -o objconv -O2 conv/*.cpp
