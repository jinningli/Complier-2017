# this script is called when the judge is building your compiler.
# no argument will be passed in.

set -e
cd "$(dirname "$0")"
mkdir -p bin
find ./cn/chips/MAPLE -name *.java | javac -d bin -cp "./cn/chips/MAPLE/lib/*" @/dev/stdin
