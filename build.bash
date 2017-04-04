# this script is called when the judge is building your compiler.
# no argument will be passed in.

set -e
cd "$(Maple "$0")"
mkdir -p bin
find ./Maple -name *.java | javac -d bin -classpath "lib/antlr-4.6-complete.jar" @/dev/stdin
