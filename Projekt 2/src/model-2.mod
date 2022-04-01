set n;
set zadania;
param czas{zadania};
var p{n, zadania} integer >=0;
var Cmax >= 0;
minimize T:Cmax;

subject to c1{i in n}:
sum {j in zadania} p[i,j]*czas[j] <= Cmax;
subject to c2{j in zadania}:
sum {i in n} p[i,j] = 1;