#include <iostream>
#include <algorithm>
using namespace std;

typedef long long ll;

ll N, M;
ll X[100010];
ll D[100010];

ll min_walk(ll L, ll R) {
  return min(L*2+R, R*2+L);
}

bool ok_t(ll L, ll T, ll i, ll r) {
  return (min_walk(L, r) <= T && (i+1 >= M || X[i]+r < X[i+1]));
}

bool solve_R(ll L, ll T) {
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
    if (T < L) return false;
    ll lb = - 2 * N;
    ll ub = 2 * N;
    while (ub - lb > 1) {
      ll r = (lb+ub)/2;
      if (ok_t(L, T, i, r)) {
        lb = r;
      } else {
        ub = r;
      }
    }
    R = lb;
    // cerr << R << endl;
    D[i] = X[i] + R;
  }
  /*
  cerr << "T = " << T << ", We reach " << D[M-1] << endl;
  for (auto i=0; i<M; i++) {
    cerr << D[i] << " ";
  }
  cerr << endl;
  */
  return (D[M-1] >= N);
}

int main() {
  cin >> N >> M;
  for (auto i=0; i<M; i++) {
    cin >> X[i];
  }
  ll lb = -1;
  ll ub = 2 * N;
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
