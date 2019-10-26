function reshaped  = strtobin( str )
array = double(str);
binarray =dec2bin(array)-'0';
reshaped = reshape(binarray,1,[]);

end

