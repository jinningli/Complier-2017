class A {
    int x;
}

class B {
    int x;
}

int main() {
    A a = new A;
    a.x = 20;
    B b = new B;
    b.x = 16;
    if (a == b) {}
    return 0;
}