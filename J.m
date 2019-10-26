function output = J(g, h, Kt, randf)


rotnG = circshift(g, 47);
rule30RotnY = elementaryCellularAutomata(30, 1, 64, randf, circshift(not(h),37));
rotnKt = circshift(logical(Kt),23);

xorresult = xor(rotnG,rule30RotnY);

finalresult = not(and(xorresult, rotnKt));

output = finalresult;

end