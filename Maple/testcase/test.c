int[] count;

int getcount(int[] count) {
    return ++count[0];
}

int main() {
    int v0;
     count = new int[1];
     count[0] = 0;
     v0 = getcount(count);
     print(toString(v0) + "aa ");

     print(str_add(toString(v0), "aa "));


     println("");
     return 0;
}

long str_add(long a, long b) {
    long l1 = *((long *)(a - sizeof(long)));
    long l2 = strlen(b);

    long l = l1 + l2;

    long ret = (long) malloc(l + sizeof(long) + 1);
    *((long *)ret) = l;
    ret += sizeof(long);


    for (int i =0; i < l1; i++)
        ret[i] = ((char *)a)[i];

   for (int i = 0; i < l2; i++)
        ret[i+l1] = ((char *)b)[i];

    ret[l] = 0;

    return ret;
}