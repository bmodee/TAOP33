param n;
param m;
param s{1..m};
param d{1..n};
param f{1..m};
param c{1..m, 1..n};
param e := 1;

var y{1..m} <= 1;
var x{1..m, 1..n} >= 0;



minimize v: (sum{i in 1..m} sum{j in 1..n} c[i,j] * x[i,j]) + (sum{i in 1..m} e * f[i] * y[i]);

subject to a{i in 1..m}:
	sum{j in 1..n} x[i,j] <= s[i]*y[i];
subject to b{j in 1..n}:
	sum{i in 1..m}  x[i,j] = d[j];
solve;
printf "Kostnad v=%f\n", v;
printf "y = 1: %d\n", sum{i in 1..m: y[i] = 1} 1;
printf "y > 0: %d\n", sum{i in 1..m: y[i] > 0} 1;


end;
