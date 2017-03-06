clear;
s=tf('s');
G0=1/(s*(0.1*s+1));
wc=102;
K=550;
gama=45;
nu=1;

[Gh,Gc]=expectedF(nu,G0,wc,K,gama);

