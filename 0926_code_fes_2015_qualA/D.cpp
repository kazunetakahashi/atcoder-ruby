#include <iostream>
#include <algorithm>
using namespace std;

int N, M;
int X[100010];
int dp[500010]; // 60点

int min_walk(int x, int a, int b) {
  if (a == x || b == x) {
    return b - a;
  }  
  int s = x - a - 1;
  int t = b - x - 1;
  return min(b - a + 1 + s, b - a + 1 + t);
}

int main() {
  cin >> N >> M;
  for (auto i=0; i<M; i++) {
    cin >> X[i];
  }
  if (M == 1) {
    cout << min_walk(X[0], 1, N) << endl;
    return 0;
  }
  dp[0] = 0;
  dp[X[0]] = min_walk(X[0], 1, X[0]);
  for (auto i=X[0]+1; i<X[1]; i++) {
    dp[i] = min_walk(X[0], 1, i);
  }
  int Z = X[0];
  int W = X[1];
  int ind = 1;
  for (auto i=X[1]; i<=N; i++) {
    if (ind+1 == M) {
    } else if (i == X[ind+1]) {
      Z = X[ind];
      W = X[ind+1];
      ind++;
    }
    int tans = N;
    // cerr << "i = " << i << ", Z = " << Z << ", W = " << W << endl;
    for (auto j=Z; j<W; j++) {
      tans = min(tans, max(dp[j], min_walk(W, j+1, i)));
      // cerr << "j = " << j << ", tans = " << tans << endl;
    }
    dp[i] = tans;
  }
  for (auto i=0; i<=N; i++) {
    cerr << dp[i] << " ";
  }
  cerr << endl;
  cout << dp[N] << endl;
}
