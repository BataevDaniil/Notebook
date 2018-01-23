size := 3;
Print("size = ", size, "\n");

kx := [9, 8, 7];
Print("kx = ", kx, "\n");

free := [7, 8, 9];
Print("free = ", free, "\n");

module := [5, 7, 11];
Print("module = ", module, "\n");

kanon := [];
for i in [1 .. size] do
	Add(kanon, kx[i]^(-1) * free[i] mod module[i]);
od;
Print("kanon = ", kanon, "\n");

solution := [];
Add(solution, [kanon[1], module[1]]);

if size >= 2 then
	sum1 := solution[1][1];
	sum2 := solution[1][2];

	v1 := ((kanon[2] - sum1) / sum2) mod module[2];
	v2 := module[2];
	Add(solution, [v1, v2]);
fi;

for i in [3 .. size] do
	sum1 := sum1 + sum2*solution[i-1][1];
	sum2 := sum2 * solution[i-1][2];

	v1 := ((kanon[i] - sum1) / sum2) mod module[i];
	v2 := module[i];
	Add(solution, [v1, v2]);
od;
Print("solution = ", solution, "\n");

if size >= 2 then
	sum1 := sum1 + sum2*solution[ Length(solution) ][1];
	sum2 := sum2 * solution[ Length(solution) ][2];
	commonSolution := [sum1, sum2];
	Print("commonSolution = ", commonSolution, "\n");
fi;
