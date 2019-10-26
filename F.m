function output = F(a,c, randf)

p1 = elementaryCellularAutomata(30, 1, 64, randf, a);
p2 = not(c);

output = xor(p1, p2);

end