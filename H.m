function output = H(d,e)

p1 = circshift(d,17);
p2 = circshift(e,59);

output = xor(p1, not(p2));

end