class C2 {
    int x;
    int y;
    bool b;
    int z;
}

int main() {
    C2 obj = new C2;
    obj.x = 10;
    obj.y = 20;
    obj.b = obj.x > obj.y;
    if (obj.b) obj.z = 40;
    else obj.z = 80;
    return obj.x + obj.y + obj.z;
}