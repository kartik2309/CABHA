function output = G(b,c,Kt, randf)

p1 = elementaryCellularAutomata(134, 1, 64, randf, elementaryCellularAutomata(30, 1, 64, randf, not(b)));
p2 = elementaryCellularAutomata(30, 1, 64, randf, not(Kt));

resultLeft = or(p1, c);
resultRight = and(p2, b);

output = xor(resultLeft, resultRight);

end