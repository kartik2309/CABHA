function collsioncount = testCollision( hash1, hash2 )

count=0;
if isequal(hash1,hash2)
    %disp("Collision");
    count=7777;
else
    %disp("No Collision");
    for i=1:64
        if hash1(i) == hash2(i)
            count=count+1;
        end
    end
end

collsioncount = count;
   
end


