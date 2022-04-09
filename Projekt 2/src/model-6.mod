set T;
set L;
set O;
param p{T, L};
var x{L, T, O} >=0;
var Cmax >= 0;

minimize F: 
    sum {i in L} sum {j in T} sum {k in O} 
    p[j, i] * x[i,j,k] * (k - 1);

subject to c1 {j in T}:
    sum {i in L}
    sum {k in O}
    x[i,j,k] = 1;

subject to c2{i in L, k in O}:
    sum{j in T} x[i,j,k] <= 1;