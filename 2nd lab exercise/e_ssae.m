A5=[0 1 0 0;20.9 0 0 0;0 0 0 1;-0.8 0 0 0]; %pinakas A systhmatos
B=[0;-1;0;0.5];
C=[1 0 0 0;0 0 1 0];
D=[0;0];
E=[B A5*B A5*A5*B A5*A5*A5*B];
E_dt=det(E)
syms s  %symvolikh metavlhth 
Is=s*eye(4); %mhtra sI
char_polyonymo=det(Is-A5)