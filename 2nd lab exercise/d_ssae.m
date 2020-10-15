syms j1 j2 j3 j4 j5 j6 j7 j8
L=[6 -1392.3 -0.136 33.6];
LC=[6 0 0 0;0 0 -1392.3 0;-0.136 0 0 0;0 0 33.6 0];

K4=[6 0;0 -1392.3;-0.136 0;0 33.6];  %K4 2X2 PINAKAS
xar_pol=expand(det(Is-(A-K4*C)))
roots([1 6 13 12.2472 3.99])  %rizes xaraktiristikou polyonymou
