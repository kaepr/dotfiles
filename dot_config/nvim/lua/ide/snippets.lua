local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets(nil, {
    cpp = {
        snip("cpp", {
            text({ "#include <bits/stdc++.h>", "" }),
            text({ "using namespace std;", "" }),
            text({ "", "" }),
            text({ "using ll = long long;", "" }),
            text({ "using ull = unsigned long long;", "" }),
            text({ "using vi = vector<int>;", "" }),
            text({ "using vll = vector<long long>;", "" }),
            text({ "", "" }),
            text({ "#define fst first", "" }),
            text({ "#define snd second", "" }),
            text({ "", "" }),
            text({ "ll powmod(ll x, ll y, ll mod) {", "" }),
            text({ "	ll res = 1;", "" }),
            text({ "	x %= mod;", "" }),
            text({ "	if (x == 0)", "" }),
            text({ "		return 0;", "" }),
            text({ "	while (y > 0) {", "" }),
            text({ "		if (y & 1)", "" }),
            text({ "			res = (res * x) % mod;", "" }),
            text({ "		y = y >> 1;", "" }),
            text({ "		x = (x * x) % mod;", "" }),
            text({ "	}", "" }),
            text({ "	return res;", "" }),
            text({ "}", "" }),
            text({ "", "" }),
            text({ "const ll MOD = 1e9 + 7;", "" }),
            text({ "", "" }),
            text({ "void solve() {" }),
            insert(0),
            text({ "", "" }),
            text({ "}", "" }),
            text({ "", "" }),
            text({ "signed main() {", "" }),
            text({ "  	ios_base::sync_with_stdio(0);", "" }),
            text({ "  	cin.tie(NULL);", "" }),
            text({ "  	cout.tie(NULL);", "" }),
            text({ "", "" }),
            text({ "  	int t = 1;", "" }),
            text({ "  	cin >> t;", "" }),
            text({ "  	while (t > 0) {", "" }),
            text({ "  		solve();", "" }),
            text({ "  		t--;", "" }),
            text({ "  	}", "" }),
            text({ "}", "" }),
        }),
        snip("simplecpp", {
            text({ "#include <bits/stdc++.h>" }),
            text({ "", "using namespace std;" }),
            text({ "", "" }),
            text({ "", "using ll = long long;" }),
            text({ "", "using ull = unsigned long long;" }),
            text({ "", "" }),
            text({ "", "const ll MOD = 1e9 + 7;" }),
            text({ "", "" }),
            text({ "", "void solve() {" }),
            insert(0),
            text({ "", "" }),
            text({ "}" }),
            text({ "", "" }),
            text({ "", "signed main() {" }),
            text({ "", "    ios_base::sync_with_stdio(0);" }),
            text({ "", "    cin.tie(NULL);" }),
            text({ "", "    cout.tie(NULL);" }),
            text({ "", "" }),
            text({ "", "    int t = 1;" }),
            text({ "", "    cin >> t;" }),
            text({ "", "    while (t > 0) {" }),
            text({ "", "		  solve();" }),
            text({ "", "		  t--;" }),
            text({ "", "	  }" }),
            text({ "", "}" })
        })
    }
})
