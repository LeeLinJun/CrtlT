clear;
s=tf('s');
G0=1/(s*(0.1*s+1));
wc=60;
K=800;
gama=52;
nu=1;

[Gh,Gc]=expectedF(nu,G0,wc,K,gama)
