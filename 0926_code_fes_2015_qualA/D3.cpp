#include <iostream>
#include <algorithm>
#include <cmath>
using namespace std;

typedef long long ll;

int N, M;
ll X[100010];
ll D[100010];

ll min_walk(ll L, ll R) {
  return min(L*2+R, R*2+L);
}

ll solve_R(ll L, ll T) {
  return max(T-L*2, (T-L)/2);
}

bool ok(ll T) {
  ll L, R;
  for (auto i=0; i<M; i++) {
    if (i == 0) {
      L = X[i] - 1;
    } else {
      L = X[i] - D[i-1] - 1;
    }
    if (T < L) {
      return false;
    } else if (L < 0) {
      L = 0;
    }
    R = solve_R(L, T);
    D[i] = X[i] + R;
  }
  return (D[M-1] >= N);
}

int main() {
  cin >> N >> M;
  for (auto i=0; i<M; i++) {
    cin >> X[i];
  }
  ll lb = -1;
  ll ub = 2*N;
  while (ub - lb > 1) {
    ll T = (lb+ub)/2;
    if (ok(T)) {
      ub = T;
    } else {
      lb = T;
    }
  }
  cout << ub << endl;
}
