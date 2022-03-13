set N;
set R within {N cross N};
param p{R};
var t{N} >=0;

minimize T: t[9]-t[0];

subject to c{(i,j) in R}:
t[j] >= t[i] + p[i,j];