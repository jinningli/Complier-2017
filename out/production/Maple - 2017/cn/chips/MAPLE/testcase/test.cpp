int maxn = 50005;
    int[][] link = new int[maxn][];
    int[] place = new int[maxn];
    int[] visit = new int[maxn];
    int[] value = new int[maxn];
    int[][] sum = new int[maxn][];
    int upperBound = 1001;

    void init(int[] array){
        int i;
        for (i = 0; i < maxn; ++i)
            array[i] = 0;
        return;
    }

    void dfs(int index){
        visit[index] = 1;
        sum[index] = new int[upperBound];
        init(sum[index]);
        int s = link[index].size();
        int i;
        for (i = 0; i < s; ++i){
            int son = link[index][i];
            if (visit[son] == 0){
                dfs(son);
                int j;
                for (j = 1; j < upperBound; ++j){
                    sum[index][j] = sum[index][j] + sum[son][j - 1];
                }
            }
        }
        sum[index][0] = sum[index][1] + value[index];
        return;
    }

    int main(){
        init(place);
        init(visit);

        int n;int Q;int u;int v;int i;

        n = getInt();Q = getInt();

        for (i = 1; i <= n; ++i)
            value[i] = getInt();

        for (i = 1; i < n; ++i){
            u = getInt();
            v = getInt();
            link[u][place[u]++] = v;
            link[v][place[v]++] = u;
        }
        if (n > 1000) upperBound = 101;
        visit[0] = 1;
        dfs(1);
    //    cout << "finished" << endl;
        for (i = 0; i < Q; ++i){
            u = getInt();
            v = getInt();
            print(toString(sum[u][v]));
        }
    }



