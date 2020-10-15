%% ERWTHMA 2 pid tuner
nominator=[3000];
denominator=[1 361.2 0];
trans=tf(nominator, denominator);



%% ERWTHMA 3  pid tuner
nominator=[2.717*10^9];
denominator=[1   3408.26 1203982.08  0];
transfe=tf(nominator,denominator);

