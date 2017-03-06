s=tf('s');
K=500;
G0=1/(s*(0.1*s+1));
margin(K*G)
%pause
%wc=0.995rad/s
%<G0'=-135
%beta=35.4
%tau=0.071,T=2.51

Gc=K*((0.071*s)+1)/(2.51*s+1);
G=G0*Gc;
margin(G)

