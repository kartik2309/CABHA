function output  = bintodecarray( s )


a = reshape(s,[],8);
s = logical(a);
array=[];

for i=1:64
    temp=bin2dec(num2str(s(i,1:8)));
    array=[temp,array];
end
output=array;
end

