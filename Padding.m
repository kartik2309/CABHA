function padded = Padding(M)

[~,s] = size(M);

if s<512
    requiredpadding = 512-mod(s,512);
    numberofrow = floor(requiredpadding/s)+1;
    oneDimesion = padarray(M,numberofrow,'replicate','pre');
    [~,si]=size(oneDimesion);
    reshapedarray = reshape(transpose(oneDimesion),[],si);
    padded = reshapedarray(1:512);
elseif s<1024
    requiredpadding = 1024-mod(s,1024);
    numberofrow = floor(requiredpadding/s)+1;
    oneDimesion = padarray(M,numberofrow,'replicate','pre');
    [~,si]=size(oneDimesion);
    reshapedarray = reshape(transpose(oneDimesion),[],si);
    padded = reshapedarray(1:1024);
end


end