%% A ERWTHMA %%
A=[0 1 0 0;20.6 0 0 0;0 0 0 1;-0.5 0 0 0]; 
B=[0;-1;0;0.5];
C=[1 0 0 0;0 0 1 0];
D=[0;0]; 
syms s  %symvolikh metavlhth 
Is=s*eye(4); %mhtra sI
char_polyonymo=det(Is-A);

E=[B A*B A*A*B A*A*A*B];
E_dt=det(E); %h orizousa tou E einai peripou 96, ara to susthma einai elegximo
E_inv=inv(E) ;

%fernoume to systima se kanoniki elegximi morfi%

q=E_inv(end,:); %teleftaia grammh tou adistrofou tou E
T=[q;q*A;q*A*A;q*A*A*A]; 
T_inv=inv(T);%adistrofos 
Ac=T*A*T_inv; 
Bc=T*B;

pole1=-15; 
pole2=-15;
z=0.5;
Wn=4;
pole3=-z*Wn+(Wn*sqrt(1-z^2))*1i;
pole4=-z*Wn-(Wn*sqrt(1-z^2))*1i;

poles=[pole1 pole2 pole3 pole4]; 

ad=[3600 1380 361 34];
a0=[0 0 -20.600 0];
initial=[-0.2;-0.06;0.01;0.3]; %arxikes synthkes

K=(a0-ad)*T; %to apaitoumeno gain gia na valoume tous polous ekie pou prepei

K1= -1*K; %kerdos me negative feedback 


