function output = I(b,f, randf)

p1 = circshift(not(b), 41);
p2 = elementaryCellularAutomata(134, 1, 64, randf, elementaryCellularAutomata(30, 1, 64, randf, circshift(not(f),31)));

output = xor(p1, p2);

end