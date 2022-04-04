set T;
set L;
param p{T};
var x{L, T} >=0;
var Cmax >= 0;
minimize c_max: Cmax;

subject to c1{j in T}:
sum {i in L} x[i,j] = p[j];

subject to c2{i in L}:
sum {j in T} x[i,j] <= Cmax;

subject to c3{j in T}:
sum {i in L} x[i,j] <= Cmax;