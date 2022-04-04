set T;
set L;
param p{T};
var x{L, T} integer >=0;
var Cmax >= 0;
minimize c_max:Cmax;

subject to c1{i in L}:
sum {j in T} x[i,j] * p[j] <= Cmax;

subject to c2{j in T}:
sum {i in L} x[i,j] = 1;