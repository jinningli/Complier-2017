int add(int a, int b) {
    return a + b;
}



int n = 1 + 3;

int main() {
    int n = 100;
    int s = 0;
    int i;
    int[] a = new int[n];

    for (i = 0; i < n; i++)
        a[i] = i;

    for (i = 0; i < n; i++) {
        println(toString(a[i]));
        s = add(s, i);
    }

    println(toString(s));
    return 0;
}