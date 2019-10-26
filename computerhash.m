function hash = computerhash(m,k)

mbin = strtobin(m);
kbin = strtobin(k);

MPadded = Padding(mbin);

K = Padding(kbin);


[~,s]=size(MPadded);
iteration = s/512;

iteration = 512*iteration;

output=zeros(512);

for i = 1:512:iteration
   
    M=MPadded(i:i+511);
    
    round = mod((sum(M(:) == 1) + sum(K(:) == 0)),512);
    output=xor(elementaryCellularAutomata(30,1,512,1/i,M),output);
 
    for j =1:round
        output = singleround(output,j,K,1/j);
    end
    K=KeyScheduler(K);
    
end

hash = uint8(bintodecarray(output));

end
