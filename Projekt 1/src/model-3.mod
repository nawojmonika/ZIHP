set N;
set R within {N cross N};
param p{R};
param c{R};
param t_d{R};
var t{N} >= 0;
var t_r{(i,j) in R} integer >= 0 <= t_d[i,j];

minimize T: t[9];

subject to c1{(i,j) in R}:
t[j] >= t[i] + p[i,j] - t_r[i,j];

subject to Budget:
sum {(i,j) in R} c[i,j]*t_r[i,j] <= 200;

subject to NS:
count {(i,j) in R} (t_r[i,j] != 0) <= 2;