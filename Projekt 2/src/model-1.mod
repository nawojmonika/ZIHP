set n;
set zadania;
param czas{zadania};
var p{n, zadania} >=0;
var Cmax >= 0;
minimize T: Cmax;

subject to c1{j in zadania}:
sum {i in n} p[i,j] = czas[j];
subject to c2{i in n}:
sum {j in zadania} p[i,j] <= Cmax;
subject to c3{j in zadania}:
sum {i in n} p[i,j] <= Cmax;