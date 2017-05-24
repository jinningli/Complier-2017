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
	int what(){
	    return 0;
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
	c.what();
	if(a.c.b + b.c.b == c.b + c.b)
	{
		c.b = c.b + c.b;
	}else if(c.a == 1){
	    c.a = 0;
	}else{
	    c.a = 0;
	}
	c.b = toString("123.456".parseInt());
	if(c.b == toString(123))
	{
		println(c.b);
	}
	return 0;
}
