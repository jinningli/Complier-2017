int[] count;

int getcount(int[] count) {
    return ++count[0];
}

int main() {
    int v0;
     count = new int[1];
     count[0] = 0;
     v0 = getcount(count);
     print(toString(v0) + " 2");
     println("33");
     return 0;
}