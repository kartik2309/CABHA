function plotHashValues( str, hashValue, name )

array = double(str);
[~,sa] = size(array);
requiredpadding = 64-mod(sa,64);
paddedarray = padarray(array,requiredpadding,'symmetric','pre');
[~,si]=size(paddedarray);
reshapedarray = reshape(transpose(paddedarray),[],si);
padded = reshapedarray(1:64);


plot(padded, hashValue), xlabel('input'), ylabel('hash'), title(name);

end

