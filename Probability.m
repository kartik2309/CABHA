function [a,b,c,d,e] = Probability( collisions, iterations )

no0 = sum(collisions(1:iterations) == 0);
no1 = sum(collisions(1:iterations) == 1);
no2 = sum(collisions(1:iterations) == 2);
no3 = sum(collisions(1:iterations) == 3);
no4 = sum(collisions(1:iterations) == 4);

a = no0/iterations;
b = no1/iterations;
c = no2/iterations;
d = no3/iterations;
e = no4/iterations;

end

