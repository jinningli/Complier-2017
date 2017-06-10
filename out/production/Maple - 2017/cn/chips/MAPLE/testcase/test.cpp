int maxn = 50005;
    int[][] link = new int[maxn][];
    int[] place = new int[maxn];

    int main(){
        int u = 0;
        int v = 0;


            u = getInt();
            v = getInt();
            int xx = 0;
            int yy = 0;
            link[u][place[u] ++] = v;
            link[v][place[v] ++] = u;

    }