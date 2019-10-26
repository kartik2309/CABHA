function randomstring = generaterandomstring(mode)
s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*(){[}]\|;:"<,>.?/~`';

if mode == 'K'
    %find number of random characters to choose from
    numRands = length(s); 

    %specify length of random string to generate
    sLength = 32;

    %generate random string
    randomstring = s( ceil(rand(1,sLength)*numRands));
elseif mode == 'M'
    %find number of random characters to choose from
    numRands = length(s); 

    %specify length of random string to generate
    sLength = 120;

    %generate random string
    randomstring = s( ceil(rand(1,sLength)*numRands));
end



end