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
	string b;
	int what(int c){
	    return a + c;
	}
}
int main()
{
	A a = new A;
	B b = new B;
	C c = new C;
	a.c = c;
	b.c = c;
	c.a = 0;
	c.b = getString();
	int d = 2;
	c.what(d);
	if(a.c.b + b.c.b == c.b + c.b)
	{
		c.b = c.b + c.b;
	}
	c.b = toString("123.456".parseInt());
	if(c.b == toString(123))
	{
		println(c.b);
	}
	return 0;
}