function kt = keySchedulerInTransformationFunction(K, round, f, sequence)

if mod(round, 2) == 0
    if f == 'J' && sequence == 0
        kt = K(1:64);
    elseif f == 'J' && sequence == 1
        kt = K(193:256);
    elseif f == 'G'
        kt = K(65:128);
    elseif f == 'H'
        kt = K(129:192);
    end
    
else
    if f == 'J' && sequence == 0
        kt = K(257:320);
    elseif f == 'J' && sequence == 1
        kt = K(449:512);
    elseif f == 'G'
        kt = K(321:384);
    elseif f == 'H'
        kt = K(385:448);
    end

end