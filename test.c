int fibo(int x)
{
	if (x < 2)
		return x;
	return fibo(x - 1) + fibo(x - 2);
}
int main()
{
	int n = getInt();
	println(toString(fibo(n)));
	int i = 0;
	for (; i <= 100; ++i)
		println(toString(fibo(30)));
	return 0;
}