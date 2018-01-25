p := 479;
Print("p = ", p, "\n");

fact := Factors(p-1);
Print("fact = ", fact, "   fact number p-1\n");

degree := 1;
for i in [1 .. Length(fact)] do
	degree := degree * fact[i];
od;

primitive := [];
for i in [1 .. Length(fact)] do
	for j in [1 .. Length(fact)] do
		tmp := fact[i]^(degree / fact[j]) mod p;
		if tmp = 1 then
			break;
		fi;
	od;
	if j = Length(fact) then
		Add(primitive, fact[i]);
	fi;
od;
Print("primitive = ", primitive, "\n");