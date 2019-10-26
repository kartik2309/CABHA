function output = singleround(M,round,K, randf)

ai=M(1:64);
bi=M(65:128);
ci=M(129:192);
di=M(193:256);
ei=M(257:320);
fi=M(321:384);
gi=M(385:448);
hi=M(449:512);

ao=ei;
bo=J(gi,hi,keySchedulerInTransformationFunction(K,round,'J',0), randf);
co=G(ei,fi,keySchedulerInTransformationFunction(K,round,'G',0), randf);
do=F(hi,gi, randf);
eo=J(ai,di,keySchedulerInTransformationFunction(K,round,'J',1), randf);
fo=H(bi,di);
go=I(ci,fi, randf);
ho=H(ai,keySchedulerInTransformationFunction(K,round,'H',0));

output = [ao,bo,co,do,eo,fo,go,ho];

end