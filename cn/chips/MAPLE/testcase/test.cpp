class A
{
	C c;
}
class B
{
	C c;
}
class C
{
	int a;
	int b;
	int what(int c){
	    return b + c;
	}
}

int b = 23;

int main()
{
	A[] a = new A[233];
	B b = new B;
	C c = new C;
	a[1].c = c;
	b.c = c;
	c.a = 0;
	int d = 2;
	c.what(d);
	return 0;
}